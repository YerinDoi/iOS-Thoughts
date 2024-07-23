//
//  StorageManager.swift
//  Thoughts
//
//  Created by 박예린 on 7/24/24.
//

import Foundation
import FirebaseStorage

final class StorageManager {
    static let shared = StorageManager()
    
    private let container = Storage.storage().reference()
    
    private init() {}
    
    // FirebaseStorage 인스턴스에 실제로 저장할 것들
    
    // 사용자 프로필사진 업로드하기
    public func uploadUserProfilePicture(
        email: String,
        image: UIImage?,
        completion: @escaping (Bool) -> Void // 업로드의 성공 여부 반환
    ) {
        
    }
    
    // 사용자 프로필사진 가져오기
    public func downloadUrlForProfilePicture(
        user: User, //사용자가 프로필 사진의 URL을 가지고 있기 때문에 User객체에서 가져옴
        completion: @escaping (URL?) -> Void
    ) {
        
    }
    
    // 블로그 해더사진 올리기
    public func uploadBlogHeaderImage(
        blogPost: BlogPost,
        image: UIImage?,
        completion: @escaping (Bool) -> Void // 업로드의 성공 여부 반환
    ) {
        
    }
    
    // 블로그 해더사진 가져오기
    public func downloadUrlForPostHeader(
        blogPost: BlogPost, //사용자가 프로필 사진의 URL을 가지고 있기 때문에 User객체에서 가져옴
        completion: @escaping (URL?) -> Void
    ) {
        
    }
}
