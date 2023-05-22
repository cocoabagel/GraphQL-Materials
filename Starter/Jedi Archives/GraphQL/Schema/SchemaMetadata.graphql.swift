// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol StarWarsAPI_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == StarWarsAPI.SchemaMetadata {}

protocol StarWarsAPI_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == StarWarsAPI.SchemaMetadata {}

protocol StarWarsAPI_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == StarWarsAPI.SchemaMetadata {}

protocol StarWarsAPI_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == StarWarsAPI.SchemaMetadata {}

extension StarWarsAPI {
  typealias ID = String

  typealias SelectionSet = StarWarsAPI_SelectionSet

  typealias InlineFragment = StarWarsAPI_InlineFragment

  typealias MutableSelectionSet = StarWarsAPI_MutableSelectionSet

  typealias MutableInlineFragment = StarWarsAPI_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Root": return StarWarsAPI.Objects.Root
      case "FilmsConnection": return StarWarsAPI.Objects.FilmsConnection
      case "Film": return StarWarsAPI.Objects.Film
      case "Species": return StarWarsAPI.Objects.Species
      case "Planet": return StarWarsAPI.Objects.Planet
      case "Person": return StarWarsAPI.Objects.Person
      case "Starship": return StarWarsAPI.Objects.Starship
      case "Vehicle": return StarWarsAPI.Objects.Vehicle
      case "FilmCharactersConnection": return StarWarsAPI.Objects.FilmCharactersConnection
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}