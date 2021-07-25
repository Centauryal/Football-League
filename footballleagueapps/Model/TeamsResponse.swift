//
//  TeamsResponse.swift
//  footballleagueapps
//
//  Created by Alfa Centaury on 19/07/21.
//

import Foundation

struct TeamsResponse: Codable {

    let teams: [Teams]

    private enum CodingKeys: String, CodingKey {
        case teams = "teams"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        teams = try values.decode([Teams].self, forKey: .teams)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(teams, forKey: .teams)
    }

}

struct Teams: Codable {

    let idTeam: String
    let idSoccerXML: String
    let idAPIfootball: String
    let intLoved: String?
    let strTeam: String
    let strTeamShort: String?
    let strAlternate: String
    let intFormedYear: String
    let strSport: String
    let strLeague: String
    let idLeague: String
    let strLeague2: String
    let idLeague2: String?
    let strLeague3: String
    let idLeague3: String
    let strLeague4: String
    let idLeague4: String?
    let strLeague5: String
    let idLeague5: String?
    let strLeague6: String
    let idLeague6: String?
    let strLeague7: String
    let idLeague7: String?
    let strDivision: String?
    let strManager: String
    let strStadium: String
    let strKeywords: String
    let strRSS: String
    let strStadiumThumb: String
    let strStadiumDescription: String
    let strStadiumLocation: String
    let intStadiumCapacity: String
    let strWebsite: String
    let strFacebook: String
    let strTwitter: String
    let strInstagram: String
    let strDescriptionEN: String
    let strDescriptionDE: String?
    let strDescriptionFR: String?
    let strDescriptionCN: String?
    let strDescriptionIT: String?
    let strDescriptionJP: String?
    let strDescriptionRU: String?
    let strDescriptionES: String?
    let strDescriptionPT: String?
    let strDescriptionSE: String?
    let strDescriptionNL: String?
    let strDescriptionHU: String?
    let strDescriptionNO: String?
    let strDescriptionIL: String?
    let strDescriptionPL: String?
    let strGender: String
    let strCountry: String
    let strTeamBadge: String
    let strTeamJersey: String
    let strTeamLogo: String
    let strTeamFanart1: String
    let strTeamFanart2: String
    let strTeamFanart3: String
    let strTeamFanart4: String
    let strTeamBanner: String
    let strYoutube: String
    let strLocked: String

    private enum CodingKeys: String, CodingKey {
        case idTeam = "idTeam"
        case idSoccerXML = "idSoccerXML"
        case idAPIfootball = "idAPIfootball"
        case intLoved = "intLoved"
        case strTeam = "strTeam"
        case strTeamShort = "strTeamShort"
        case strAlternate = "strAlternate"
        case intFormedYear = "intFormedYear"
        case strSport = "strSport"
        case strLeague = "strLeague"
        case idLeague = "idLeague"
        case strLeague2 = "strLeague2"
        case idLeague2 = "idLeague2"
        case strLeague3 = "strLeague3"
        case idLeague3 = "idLeague3"
        case strLeague4 = "strLeague4"
        case idLeague4 = "idLeague4"
        case strLeague5 = "strLeague5"
        case idLeague5 = "idLeague5"
        case strLeague6 = "strLeague6"
        case idLeague6 = "idLeague6"
        case strLeague7 = "strLeague7"
        case idLeague7 = "idLeague7"
        case strDivision = "strDivision"
        case strManager = "strManager"
        case strStadium = "strStadium"
        case strKeywords = "strKeywords"
        case strRSS = "strRSS"
        case strStadiumThumb = "strStadiumThumb"
        case strStadiumDescription = "strStadiumDescription"
        case strStadiumLocation = "strStadiumLocation"
        case intStadiumCapacity = "intStadiumCapacity"
        case strWebsite = "strWebsite"
        case strFacebook = "strFacebook"
        case strTwitter = "strTwitter"
        case strInstagram = "strInstagram"
        case strDescriptionEN = "strDescriptionEN"
        case strDescriptionDE = "strDescriptionDE"
        case strDescriptionFR = "strDescriptionFR"
        case strDescriptionCN = "strDescriptionCN"
        case strDescriptionIT = "strDescriptionIT"
        case strDescriptionJP = "strDescriptionJP"
        case strDescriptionRU = "strDescriptionRU"
        case strDescriptionES = "strDescriptionES"
        case strDescriptionPT = "strDescriptionPT"
        case strDescriptionSE = "strDescriptionSE"
        case strDescriptionNL = "strDescriptionNL"
        case strDescriptionHU = "strDescriptionHU"
        case strDescriptionNO = "strDescriptionNO"
        case strDescriptionIL = "strDescriptionIL"
        case strDescriptionPL = "strDescriptionPL"
        case strGender = "strGender"
        case strCountry = "strCountry"
        case strTeamBadge = "strTeamBadge"
        case strTeamJersey = "strTeamJersey"
        case strTeamLogo = "strTeamLogo"
        case strTeamFanart1 = "strTeamFanart1"
        case strTeamFanart2 = "strTeamFanart2"
        case strTeamFanart3 = "strTeamFanart3"
        case strTeamFanart4 = "strTeamFanart4"
        case strTeamBanner = "strTeamBanner"
        case strYoutube = "strYoutube"
        case strLocked = "strLocked"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        idTeam = try values.decode(String.self, forKey: .idTeam)
        idSoccerXML = try values.decode(String.self, forKey: .idSoccerXML)
        idAPIfootball = try values.decode(String.self, forKey: .idAPIfootball)
        intLoved = try? values.decode(String.self, forKey: .intLoved)
        strTeam = try values.decode(String.self, forKey: .strTeam)
        strTeamShort = try? values.decode(String.self, forKey: .strTeamShort)
        strAlternate = try values.decode(String.self, forKey: .strAlternate)
        intFormedYear = try values.decode(String.self, forKey: .intFormedYear)
        strSport = try values.decode(String.self, forKey: .strSport)
        strLeague = try values.decode(String.self, forKey: .strLeague)
        idLeague = try values.decode(String.self, forKey: .idLeague)
        strLeague2 = try values.decode(String.self, forKey: .strLeague2)
        idLeague2 = try? values.decode(String.self, forKey: .idLeague2)
        strLeague3 = try values.decode(String.self, forKey: .strLeague3)
        idLeague3 = try values.decode(String.self, forKey: .idLeague3)
        strLeague4 = try values.decode(String.self, forKey: .strLeague4)
        idLeague4 = try? values.decode(String.self, forKey: .idLeague4)
        strLeague5 = try values.decode(String.self, forKey: .strLeague5)
        idLeague5 = try? values.decode(String.self, forKey: .idLeague5)
        strLeague6 = try values.decode(String.self, forKey: .strLeague6)
        idLeague6 = try? values.decode(String.self, forKey: .idLeague6)
        strLeague7 = try values.decode(String.self, forKey: .strLeague7)
        idLeague7 = try? values.decode(String.self, forKey: .idLeague7)
        strDivision = try? values.decode(String.self, forKey: .strDivision)
        strManager = try values.decode(String.self, forKey: .strManager)
        strStadium = try values.decode(String.self, forKey: .strStadium)
        strKeywords = try values.decode(String.self, forKey: .strKeywords)
        strRSS = try values.decode(String.self, forKey: .strRSS)
        strStadiumThumb = try values.decode(String.self, forKey: .strStadiumThumb)
        strStadiumDescription = try values.decode(String.self, forKey: .strStadiumDescription)
        strStadiumLocation = try values.decode(String.self, forKey: .strStadiumLocation)
        intStadiumCapacity = try values.decode(String.self, forKey: .intStadiumCapacity)
        strWebsite = try values.decode(String.self, forKey: .strWebsite)
        strFacebook = try values.decode(String.self, forKey: .strFacebook)
        strTwitter = try values.decode(String.self, forKey: .strTwitter)
        strInstagram = try values.decode(String.self, forKey: .strInstagram)
        strDescriptionEN = try values.decode(String.self, forKey: .strDescriptionEN)
        strDescriptionDE = try? values.decode(String.self, forKey: .strDescriptionDE)
        strDescriptionFR = try? values.decode(String.self, forKey: .strDescriptionFR)
        strDescriptionCN = try? values.decode(String.self, forKey: .strDescriptionCN)
        strDescriptionIT = try? values.decode(String.self, forKey: .strDescriptionIT)
        strDescriptionJP = try? values.decode(String.self, forKey: .strDescriptionJP)
        strDescriptionRU = try? values.decode(String.self, forKey: .strDescriptionRU)
        strDescriptionES = try? values.decode(String.self, forKey: .strDescriptionES)
        strDescriptionPT = try? values.decode(String.self, forKey: .strDescriptionPT)
        strDescriptionSE = try? values.decode(String.self, forKey: .strDescriptionSE)
        strDescriptionNL = try? values.decode(String.self, forKey: .strDescriptionNL)
        strDescriptionHU = try? values.decode(String.self, forKey: .strDescriptionHU)
        strDescriptionNO = try? values.decode(String.self, forKey: .strDescriptionNO)
        strDescriptionIL = try? values.decode(String.self, forKey: .strDescriptionIL)
        strDescriptionPL = try? values.decode(String.self, forKey: .strDescriptionPL)
        strGender = try values.decode(String.self, forKey: .strGender)
        strCountry = try values.decode(String.self, forKey: .strCountry)
        strTeamBadge = try values.decode(String.self, forKey: .strTeamBadge)
        strTeamJersey = try values.decode(String.self, forKey: .strTeamJersey)
        strTeamLogo = try values.decode(String.self, forKey: .strTeamLogo)
        strTeamFanart1 = try values.decode(String.self, forKey: .strTeamFanart1)
        strTeamFanart2 = try values.decode(String.self, forKey: .strTeamFanart2)
        strTeamFanart3 = try values.decode(String.self, forKey: .strTeamFanart3)
        strTeamFanart4 = try values.decode(String.self, forKey: .strTeamFanart4)
        strTeamBanner = try values.decode(String.self, forKey: .strTeamBanner)
        strYoutube = try values.decode(String.self, forKey: .strYoutube)
        strLocked = try values.decode(String.self, forKey: .strLocked)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(idTeam, forKey: .idTeam)
        try container.encode(idSoccerXML, forKey: .idSoccerXML)
        try container.encode(idAPIfootball, forKey: .idAPIfootball)
        try container.encode(intLoved, forKey: .intLoved)
        try container.encode(strTeam, forKey: .strTeam)
        try container.encode(strTeamShort, forKey: .strTeamShort)
        try container.encode(strAlternate, forKey: .strAlternate)
        try container.encode(intFormedYear, forKey: .intFormedYear)
        try container.encode(strSport, forKey: .strSport)
        try container.encode(strLeague, forKey: .strLeague)
        try container.encode(idLeague, forKey: .idLeague)
        try container.encode(strLeague2, forKey: .strLeague2)
        try container.encode(idLeague2, forKey: .idLeague2)
        try container.encode(strLeague3, forKey: .strLeague3)
        try container.encode(idLeague3, forKey: .idLeague3)
        try container.encode(strLeague4, forKey: .strLeague4)
        try container.encode(idLeague4, forKey: .idLeague4)
        try container.encode(strLeague5, forKey: .strLeague5)
        try container.encode(idLeague5, forKey: .idLeague5)
        try container.encode(strLeague6, forKey: .strLeague6)
        try container.encode(idLeague6, forKey: .idLeague6)
        try container.encode(strLeague7, forKey: .strLeague7)
        try container.encode(idLeague7, forKey: .idLeague7)
        try container.encode(strDivision, forKey: .strDivision)
        try container.encode(strManager, forKey: .strManager)
        try container.encode(strStadium, forKey: .strStadium)
        try container.encode(strKeywords, forKey: .strKeywords)
        try container.encode(strRSS, forKey: .strRSS)
        try container.encode(strStadiumThumb, forKey: .strStadiumThumb)
        try container.encode(strStadiumDescription, forKey: .strStadiumDescription)
        try container.encode(strStadiumLocation, forKey: .strStadiumLocation)
        try container.encode(intStadiumCapacity, forKey: .intStadiumCapacity)
        try container.encode(strWebsite, forKey: .strWebsite)
        try container.encode(strFacebook, forKey: .strFacebook)
        try container.encode(strTwitter, forKey: .strTwitter)
        try container.encode(strInstagram, forKey: .strInstagram)
        try container.encode(strDescriptionEN, forKey: .strDescriptionEN)
        try container.encode(strDescriptionDE, forKey: .strDescriptionDE)
        try container.encode(strDescriptionFR, forKey: .strDescriptionFR)
        try container.encode(strDescriptionCN, forKey: .strDescriptionCN)
        try container.encode(strDescriptionIT, forKey: .strDescriptionIT)
        try container.encode(strDescriptionJP, forKey: .strDescriptionJP)
        try container.encode(strDescriptionRU, forKey: .strDescriptionRU)
        try container.encode(strDescriptionES, forKey: .strDescriptionES)
        try container.encode(strDescriptionPT, forKey: .strDescriptionPT)
        try container.encode(strDescriptionSE, forKey: .strDescriptionSE)
        try container.encode(strDescriptionNL, forKey: .strDescriptionNL)
        try container.encode(strDescriptionHU, forKey: .strDescriptionHU)
        try container.encode(strDescriptionNO, forKey: .strDescriptionNO)
        try container.encode(strDescriptionIL, forKey: .strDescriptionIL)
        try container.encode(strDescriptionPL, forKey: .strDescriptionPL)
        try container.encode(strGender, forKey: .strGender)
        try container.encode(strCountry, forKey: .strCountry)
        try container.encode(strTeamBadge, forKey: .strTeamBadge)
        try container.encode(strTeamJersey, forKey: .strTeamJersey)
        try container.encode(strTeamLogo, forKey: .strTeamLogo)
        try container.encode(strTeamFanart1, forKey: .strTeamFanart1)
        try container.encode(strTeamFanart2, forKey: .strTeamFanart2)
        try container.encode(strTeamFanart3, forKey: .strTeamFanart3)
        try container.encode(strTeamFanart4, forKey: .strTeamFanart4)
        try container.encode(strTeamBanner, forKey: .strTeamBanner)
        try container.encode(strYoutube, forKey: .strYoutube)
        try container.encode(strLocked, forKey: .strLocked)
    }

}
