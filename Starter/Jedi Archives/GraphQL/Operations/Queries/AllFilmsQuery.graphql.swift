// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension StarWarsAPI {
  class AllFilmsQuery: GraphQLQuery {
    public static let operationName: String = "AllFilms"
    public static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query AllFilms {
          allFilms {
            __typename
            films {
              __typename
              id
              director
              episodeID
              title
              releaseDate
              characterConnection(first: 10) {
                __typename
                characters {
                  __typename
                  id
                  name
                  birthYear
                  eyeColor
                  hairColor
                  homeworld {
                    __typename
                    name
                  }
                }
              }
            }
          }
        }
        """#
      ))

    public init() {}

    public struct Data: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Root }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("allFilms", AllFilms?.self),
      ] }

      public var allFilms: AllFilms? { __data["allFilms"] }

      /// AllFilms
      ///
      /// Parent Type: `FilmsConnection`
      public struct AllFilms: StarWarsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.FilmsConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("films", [Film?]?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        public var films: [Film?]? { __data["films"] }

        /// AllFilms.Film
        ///
        /// Parent Type: `Film`
        public struct Film: StarWarsAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Film }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", StarWarsAPI.ID.self),
            .field("director", String?.self),
            .field("episodeID", Int?.self),
            .field("title", String?.self),
            .field("releaseDate", String?.self),
            .field("characterConnection", CharacterConnection?.self, arguments: ["first": 10]),
          ] }

          /// The ID of an object
          public var id: StarWarsAPI.ID { __data["id"] }
          /// The name of the director of this film.
          public var director: String? { __data["director"] }
          /// The episode number of this film.
          public var episodeID: Int? { __data["episodeID"] }
          /// The title of this film.
          public var title: String? { __data["title"] }
          /// The ISO 8601 date format of film release at original creator country.
          public var releaseDate: String? { __data["releaseDate"] }
          public var characterConnection: CharacterConnection? { __data["characterConnection"] }

          /// AllFilms.Film.CharacterConnection
          ///
          /// Parent Type: `FilmCharactersConnection`
          public struct CharacterConnection: StarWarsAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.FilmCharactersConnection }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("characters", [Character?]?.self),
            ] }

            /// A list of all of the objects returned in the connection. This is a convenience
            /// field provided for quickly exploring the API; rather than querying for
            /// "{ edges { node } }" when no edge data is needed, this field can be be used
            /// instead. Note that when clients like Relay need to fetch the "cursor" field on
            /// the edge to enable efficient pagination, this shortcut cannot be used, and the
            /// full "{ edges { node } }" version should be used instead.
            public var characters: [Character?]? { __data["characters"] }

            /// AllFilms.Film.CharacterConnection.Character
            ///
            /// Parent Type: `Person`
            public struct Character: StarWarsAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Person }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("id", StarWarsAPI.ID.self),
                .field("name", String?.self),
                .field("birthYear", String?.self),
                .field("eyeColor", String?.self),
                .field("hairColor", String?.self),
                .field("homeworld", Homeworld?.self),
              ] }

              /// The ID of an object
              public var id: StarWarsAPI.ID { __data["id"] }
              /// The name of this person.
              public var name: String? { __data["name"] }
              /// The birth year of the person, using the in-universe standard of BBY or ABY -
              /// Before the Battle of Yavin or After the Battle of Yavin. The Battle of Yavin is
              /// a battle that occurs at the end of Star Wars episode IV: A New Hope.
              public var birthYear: String? { __data["birthYear"] }
              /// The eye color of this person. Will be "unknown" if not known or "n/a" if the
              /// person does not have an eye.
              public var eyeColor: String? { __data["eyeColor"] }
              /// The hair color of this person. Will be "unknown" if not known or "n/a" if the
              /// person does not have hair.
              public var hairColor: String? { __data["hairColor"] }
              /// A planet that this person was born on or inhabits.
              public var homeworld: Homeworld? { __data["homeworld"] }

              /// AllFilms.Film.CharacterConnection.Character.Homeworld
              ///
              /// Parent Type: `Planet`
              public struct Homeworld: StarWarsAPI.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Planet }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("name", String?.self),
                ] }

                /// The name of this planet.
                public var name: String? { __data["name"] }
              }
            }
          }
        }
      }
    }
  }

}