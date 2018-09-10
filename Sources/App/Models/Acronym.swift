import Vapor
import FluentSQLite

final class Acronym: Codable {
    var id: Int? // Set by database where Acronym is saved
    var short: String
    var long: String

    init(short: String, long:String) {
        self.short = short
        self.long = long
    }
}

//extension Acronym: Model {
//    typealias Database = SQLiteDatabase // Tells Fluent what database to use
//    typealias ID = Int  // Tells Fluent what type the id is
//    public static var idKey: IDKey = \Acronym.id    // Tells Fluent the key path of the model's ID property
//}

extension Acronym: SQLiteModel {
    // “The Fluent packages provide Model helper protocols for each database provider so you don’t have to specify the database or ID types, or the key. ”
}

extension Acronym: Migration {
    // Tables
}

extension Acronym: Content {
    // Saves data
    // Wrapper around Codable
}
