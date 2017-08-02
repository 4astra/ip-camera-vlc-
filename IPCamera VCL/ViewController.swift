//
//  ViewController.swift
//  IPCamera VCL
//
//  Created by Brian Ha on 8/1/17.
//  Copyright © 2017 Hockey Run. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var mediaPlayer = VLCMediaPlayer()
	var media: VLCMedia?
	
	@IBOutlet weak var ibMediaViewer: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// url string: connect to Panasonic camera from http
		let url = URL(string: "http://username:password@127.174.24.42:8484/axis-cgi/mjpg/video.cgi")
		media = VLCMedia(url: url)
		mediaPlayer.media = media
		mediaPlayer.drawable = ibMediaViewer
		mediaPlayer.adjustFilterEnabled = false
		mediaPlayer.play()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

}
