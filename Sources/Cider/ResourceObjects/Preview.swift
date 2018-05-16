//
//  Preview.swift
//  Cider
//
//  Created by Anders Klausen on 16/05/2018.
//  Copyright © 2018 Scott Hoyt. All rights reserved.
//

/// An object that represents the preview assets for a song.
public struct Preview: Codable {
    /// The preview URL for the content
    public let url: String
    
    /// (Optional) The preview artwork for the associated music video.
    public let artwork: Artwork?
}
