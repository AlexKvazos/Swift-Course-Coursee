//
//  CoursesViewController.swift
//  Online Courses
//
//  Created by Alejandro Cavazos on 11/1/17.
//  Copyright © 2017 Alejandro Cavazos. All rights reserved.
//

import UIKit

class CoursesViewController: UIViewController {

    var courses = CourseStore.downloadNewCourses()
    var selectedCourse: Course!
    
    @IBOutlet weak var chefCourseButton: UIButton!
    @IBOutlet weak var popStarCourseButton: UIButton!
    @IBOutlet weak var swiftCourseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
    }
    
    func updateUI() {
        let chefCourse = courses[0]
        chefCourseButton.setImage(chefCourse.buttonImage, for: [])
        
        let popStarCourse = courses[1]
        popStarCourseButton.setImage(popStarCourse.buttonImage, for: [])
        
        let swiftCourse = courses[2]
        swiftCourseButton.setImage(swiftCourse.buttonImage, for: [])
    }
    
    @IBAction func chefCourseDidTap() {
        selectedCourse = courses[0]
        
        self.performSegue(
            withIdentifier: Storyboard.showCourseDetail,
            sender: nil)
    }
    
    @IBAction func popStarCourseDidTap() {
        selectedCourse = courses[1]
        
        self.performSegue(
            withIdentifier: Storyboard.showCourseDetail,
            sender: nil)
    }
    
    @IBAction func swiftCourseDidTap() {
        selectedCourse = courses[2]
        
        self.performSegue(
            withIdentifier: Storyboard.showCourseDetail,
            sender: nil)
    }
    
    struct Storyboard {
        static let showCourseDetail = "ShowCourseDetail"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.showCourseDetail {
            if let courseDetailViewController = segue.destination as? CourseDetailViewController {
                courseDetailViewController.course = self.selectedCourse
            }
        }
    }
}
