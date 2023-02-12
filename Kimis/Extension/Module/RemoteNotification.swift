//
//  RemoteNotification.swift
//  Kimis
//
//  Created by Lakr Aream on 2023/1/15.
//

import UIKit

extension RemoteNotification.Kind {
    var tintIcon: UIImage? {
        switch self {
        case .follow: return UIImage(systemName: "person.crop.circle.badge.plus")
        case .mention: return UIImage(systemName: "at")
        case .reply: return UIImage(systemName: "arrowshape.turn.up.left")
        case .renote: return UIImage(systemName: "repeat")
        case .quote: return UIImage(systemName: "quote.bubble")
        case .reaction: return nil
        case .pollVote: return UIImage(systemName: "checkmark")
        case .pollEnded: return UIImage(systemName: "timeline.selection")
        case .receiveFollowRequest: return UIImage(systemName: "person.crop.square")
        case .followRequestAccepted: return UIImage(systemName: "person.fill.badge.plus")
        case .groupInvited: return UIImage(systemName: "person.2.wave.2.fill")
        case .app: return UIImage(systemName: "app.badge.fill")

        default: return UIImage(systemName: "questionmark.circle")
        }
    }

    var title: String {
        switch self {
        case .follow: return "Followed you"
        case .mention: return "Mentioned you"
        case .reply: return "Replied"
        case .renote: return "Boosted"
        case .quote: return "Quoted"
        case .reaction: return "Reacted"
        case .pollVote: return "Voted"
        case .pollEnded: return "Poll ended"
        case .receiveFollowRequest: return "You have a follow request"
        case .followRequestAccepted: return "Your follow request was accepted"
        case .groupInvited: return "You are invited"
        case .app: return "Application Message"

        default: return "Unknown Message"
        }
    }
}
