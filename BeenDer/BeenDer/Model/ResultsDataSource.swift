////
////  ResultsDataSource.swift
////  BeenDer
////
////  Created by MattHew Phraxayavong on 5/13/20.
////  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//extension ResultsView: UITableViewDataSource, UITableViewDelegate {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return books.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        // Dequeue a reusable cell from the pool
//        let cell = tableView.dequeueReusableCell(withIdentifier: ResultsTableViewCell.identifier, for: indexPath) as! ResultsTableViewCell
//
//        // Configure the cell...
//
////        let task = viewModel!.books[indexPath.section]
////        print(task)
////        let task = "hey"
//
////        cell.sessionTitleLabel.text = task.bookTitle
////        cell.sessionTitleLabel.text = task
//
//        cell.sessionTitleLabel.text = books[indexPath.row].bookTitle
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 15
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = .systemBlue
//
//        return headerView
//    }
//
//
//}
