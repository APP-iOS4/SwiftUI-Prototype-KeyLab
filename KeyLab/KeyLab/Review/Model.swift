//
//  Model.swift
//  KeyLab
//
//  Created by 강 태훈 on 2/20/24.
//

import Foundation

struct ReviewItem: Identifiable{
    let id: Int
    let image: String
    let title: String
    let content: String
    let heartCount: Int
}

let reviewItems = [
    ReviewItem(id: 1, image: "image1", title: "제목", content: "기타 내용", heartCount: 1000),
    ReviewItem(id: 2, image: "image2", title: "제목", content: "기타 내용", heartCount: 2000),
    ReviewItem(id: 3, image: "image3", title: "제목", content: "기타 내용", heartCount: 3000),
    ReviewItem(id: 4, image: "image4", title: "제목", content: "기타 내용", heartCount: 4000),
    ReviewItem(id: 5, image: "image5", title: "제목", content: "기타 내용", heartCount: 5000),
    ReviewItem(id: 6, image: "image6", title: "제목", content: "기타 내용", heartCount: 6000),
    ReviewItem(id: 7, image: "image6", title: "제목", content: "기타 내용", heartCount: 7000),
    ReviewItem(id: 8, image: "image6", title: "제목", content: "기타 내용", heartCount: 8000),
    ReviewItem(id: 9, image: "image6", title: "제목", content: "기타 내용", heartCount: 9000),
    ReviewItem(id: 10, image: "image6", title: "제목", content: "기타 내용", heartCount: 10000),
  ]
