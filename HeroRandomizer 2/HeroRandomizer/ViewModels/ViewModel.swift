import Foundation

final class ViewModel: ObservableObject {
    @Published var selectedHero: Hero?
    @Published var isLoading = false
    @Published var error: String?
    
    func fetchHero() async {
        guard let url = URL(string: "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json") else {
            await handleError("Invalid URL")
            return
        }
        
        await MainActor.run { isLoading = true }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            print("✅ Данные получены: \(data.count) байт")
            
            let heroes = try JSONDecoder().decode([Hero].self, from: data)
            print("✅ Успешно декодировано: \(heroes.count) героев")
            
            let randomHero = heroes.randomElement()
            
            await MainActor.run {
                selectedHero = randomHero
                isLoading = false
                error = nil
            }
        } catch {
            print("❌ Ошибка JSON: \(error)")
            await handleError("Ошибка обработки данных")
        }

    }
    
    private func handleError(_ message: String) async {
        await MainActor.run {
            error = message
            isLoading = false
            selectedHero = nil
        }
    }
}
