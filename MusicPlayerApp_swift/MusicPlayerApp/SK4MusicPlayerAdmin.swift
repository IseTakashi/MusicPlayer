//
//  SK4MusicPlayerAdmin.swift
//  MusicPlayerApp
//
//  Created by 伊勢峻 on 2018/07/21.
//  Copyright © 2018年 伊勢峻. All rights reserved.
//

import Foundation
import MediaPlayer

/*
 MPMusicPlayerController を管理するためのクラス
 */
class SK4MusicPlayerAdmin: NSObject {
    
    // アプリ全体で使用する MPMusicPlayerController
    let player = MPMusicPlayerController.systemMusicPlayer
    
// MARK: - 再生キュー
    // すべての曲を再生キューにセット
    func allSongsToQueue() {
        let query = MPMediaQuery.songs()
        player.setQueue(with: query)
    }
    
// MARK: - 基本操作
    // 再生
    func play() {
        player.play()
    }
    
    // 一時停止
    func pause() {
        player.pause()
    }
    
    // 1つ前の曲に移動
    func skipToPreviousItem() {
        player.skipToPreviousItem()
    }
    
    // 1つ後の曲に移動
    func skipToNextItem() {
        player.skipToNextItem()
    }
    
}
