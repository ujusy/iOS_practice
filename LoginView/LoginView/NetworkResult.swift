//
//  NetworkResult.swift
//  LoginView
//
//  Created by uju_sy on 2020/05/16.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import Foundation
// 서버 통신 결과 ==> 성공, 요청에러, 경로에러, 서버내부에러, 네트워크연결실패
enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
    
}
