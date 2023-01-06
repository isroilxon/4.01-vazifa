//
//  TableViewCell.swift
//  4.01 vazifa
//
//  Created by mac on 04/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    let img1 = UIImageView()
    let label = UILabel()
    let img2 = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        img1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img1)
        img1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        img1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        img1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        img1.heightAnchor.constraint(equalToConstant: 20).isActive = true
        img1.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        img2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img2)
        img2.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        img2.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        img2.image = UIImage(systemName: "chevron.right")
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
