//
//  ViewController.swift
//  MusicPlayerApp
//
//  Created by 伊勢峻 on 2018/07/21.
//  Copyright © 2018年 伊勢峻. All rights reserved.
//

import UIKit
import MediaPlayer

let musicPlayer = SK4MusicPlayerAdmin()

class ViewController: UIViewController {

    @IBOutlet weak var artistLabel: UILabel!    // アーティストラベル
    @IBOutlet weak var albumLabel: UILabel!     // アルバムラベル
    @IBOutlet weak var songLabel: UILabel!      // 曲ラベル
    @IBOutlet weak var playButton: UIButton!    // 再生・停止ボタン
    
// MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SK4MusicPlayerAdmin クラスの allSongsToQueue メソッドを使用
        musicPlayer.allSongsToQueue()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // 再生状態の判定
    func statePlay() {
        // 再生・停止 の状態を取得
        let playerStatus = musicPlayer.player.playbackState
        
        if playerStatus == MPMusicPlaybackState.playing {
            // 再生中
            musicPlayer.pause()
            playButton.setTitle("▶", for: .normal)
        }
        else if playerStatus == MPMusicPlaybackState.paused {
            // 停止
            musicPlayer.play()
            playButton.setTitle("Ⅱ", for: .normal)
        }
    }
    
// MARK: - IBAction
    // 再生・停止ボタン
    @IBAction func onPlayButton(_ sender: Any) {
        statePlay()
    }
    
    // 1つ前の曲に移動ボタン
    @IBAction func onPreviousButton(_ sender: Any) {
        musicPlayer.skipToPreviousItem()
    }
    
    // 1つ後の曲に移動ボタン
    @IBAction func onNextButton(_ sender: Any) {
        musicPlayer.skipToNextItem()
    }
    
}

