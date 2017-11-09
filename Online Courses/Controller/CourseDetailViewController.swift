//
//  CourseDetailViewController.swift
//  Online Courses
//
//  Created by Alejandro Cavazos on 11/4/17.
//  Copyright © 2017 Alejandro Cavazos. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {

    @IBOutlet weak var joinCourseButton: UIButton!
    @IBOutlet weak var courseTitleLabel: UILabel!
    @IBOutlet weak var courseDescriptionTextView: UITextView!
    @IBOutlet weak var featuredImageView: UIImageView!
    
    var course: Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        featuredImageView.image = course.featuredImage
        courseTitleLabel.text = course.title
        courseDescriptionTextView.text = course.description
        joinCourseButton.setTitle("Join \(course.instructor)", for: [])
    }
    
    @IBAction func playButtonDidTap() {
        
    }
    
    @IBAction func joinButtonDidTap(_ sender: Any) {
        
    }
}
