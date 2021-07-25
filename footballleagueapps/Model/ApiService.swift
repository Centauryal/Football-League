//
//  ApiService.swift
//  footballleagueapps
//
//  Created by Alfa Centaury on 19/07/21.
//

import Foundation

class ApiService {
    private let apiKey = "1"
    
    func getListTeams(completion: @escaping ([Teams]) -> Void) {
        let urlListTeams = URLComponents(string: "https://www.thesportsdb.com/api/v1/json/" + apiKey + "/search_all_teams.php?l=English%20Premier%20League")!
        
        let request = URLRequest(url: urlListTeams.url!)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print("Failed : Some think wrong!")
            } else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                do {
                    let listTeams = try decoder.decode(TeamsResponse.self, from: data).teams
                    completion(listTeams)
                } catch {
                    print("Invalid Response \(error)")
                }
            }
        }
        task.resume()
    }
    
    func getDetailTeam(idTeam id: String, completion: @escaping ([Teams]) -> Void) {
        let urlDetailTeam = URLComponents(string: "https://www.thesportsdb.com/api/v1/json/" + apiKey + "lookupteam.php?id=" + id)!
        
        let request = URLRequest(url: urlDetailTeam.url!)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print("Failed : Some think wrong!")
            } else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                do {
                    let team = try decoder.decode(TeamsResponse.self, from: data).teams
                    completion(team)
                } catch {
                    print("Invalid Response \(error)")
                }
            }
        }
        task.resume()
    }
}
