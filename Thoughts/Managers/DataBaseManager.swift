//
//  DataBaseManager.swift
//  Thoughts
//
//  Created by 박예린 on 7/24/24.
//

import Foundation
import FirebaseFirestore

final class DataBaseManager {
    static let shared = DataBaseManager()
    
    private let database = Firestore.firestore()
    
    private init() {}
    
    // 데이터베이스에 포스트 삽입하기
    public func insert(
        blogPost: BlogPost, // Models의 BlogPost
        user: User,         // Models의 User
        
        //DB에 게시글이 성공적으로 삽입되었는지 알려주는 완료 핸들러
        completion: @escaping (Bool) -> Void
    ){
        
    }
    
    // 데이터베이스에서 전체 포스트 가져오기
    public func getAllPosts(
        //DB에서 블로그 게시글 전체 객체 반환 완료 핸들러
        completion: @escaping ([BlogPost]) -> Void //
    ){
        
    }
    
    // 데이터베이스에서 특정 사용자에 대한 포스트 가져오기
    public func getPostsForUser(
        for user: User,
        //DB에서 블로그 게시글 전체 객체 반환 완료 핸들러
        completion: @escaping ([BlogPost]) -> Void //
    ){
        
    }
    
    // 데이터베이스에 사용자 추가하기
    public func insertUser(
        user: User,
        completion: @escaping (Bool) -> Void //
    ){
        
    }

}
