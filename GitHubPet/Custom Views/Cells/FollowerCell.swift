//
//  FollowerCell.swift
//  GitHubPet
//
//  Created by Artyom on 31.01.2024.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = "FollowerCell"
    
    let avarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
    }
    
    private func configure() {
        addSubview(avarImageView)
        addSubview(usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avarImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            avarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avarImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            avarImageView.heightAnchor.constraint(equalTo: avarImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avarImageView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
