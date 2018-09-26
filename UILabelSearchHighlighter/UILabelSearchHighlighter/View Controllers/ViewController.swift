//
//  ViewController.swift
//  UILabelSearchHighlighter
//
//  Created by Leonardo Cardoso on 26.09.18.
//  Copyright © 2018 Leonardo Cardoso • https://leocardz.com. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    // MARK: - Properties
    private let items = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam volutpat lacus ut purus varius dictum. Suspendisse ut neque rhoncus, maximus nibh ac, laoreet risus. Nulla dignissim ante eget metus laoreet, ac iaculis ligula faucibus. Morbi sagittis libero sit amet odio malesuada, vel volutpat tellus pulvinar. Nulla vulputate nulla sit amet varius vehicula.",
        "Vestibulum ac lectus in risus pretium suscipit. Mauris interdum tellus a lectus porta, eu mollis erat tristique. In suscipit velit eu varius auctor. Sed sit amet enim at lacus maximus pharetra sit amet ut nibh. Suspendisse viverra elit vel lectus congue placerat quis at nibh. Fusce aliquam nisi eget nisl vestibulum, sit amet finibus urna cursus. Maecenas vestibulum arcu in elementum laoreet. Sed vitae dolor dapibus, porta quam vel, auctor ipsum. Nulla finibus urna ac urna ornare porta id nec augue.",
        "Donec sollicitudin erat a odio dapibus tempus. Nullam sit amet dolor eget dolor aliquet semper. Sed sed quam scelerisque, hendrerit ante id, sodales enim. In imperdiet velit ut laoreet condimentum. Pellentesque vitae nunc elementum, tristique magna in, hendrerit augue. Maecenas et dolor posuere, auctor odio vitae, blandit massa. Duis eget turpis efficitur leo euismod eleifend rhoncus sed elit. Aenean ut nunc at elit molestie malesuada. Donec viverra tellus feugiat porta tristique. Fusce vel dui quis lacus volutpat imperdiet vel eu elit. Praesent sodales est id metus tempor, non pharetra dolor ultrices. Nullam quis purus nec libero pharetra sagittis.",
        "Phasellus sagittis justo in molestie bibendum. Integer aliquet arcu vel erat convallis commodo. Nam id metus sed urna rutrum rhoncus. Integer ac leo sollicitudin purus luctus efficitur. Nunc commodo ligula a elementum pretium. Vivamus sagittis turpis non mi dapibus accumsan.",
        "Sed consectetur neque eu imperdiet scelerisque. Mauris at eros et lacus bibendum ullamcorper vel cursus sem. Pellentesque a libero blandit, viverra risus vel, tincidunt sapien. Nam vel turpis laoreet, hendrerit arcu eget, lacinia metus. Etiam eu dui mollis ligula porta vestibulum commodo nec ante.",
        "Phasellus dignissim magna vel risus ornare, quis pretium urna suscipit. Maecenas ut ante et arcu viverra gravida ac in metus. Aliquam viverra ligula et luctus interdum. Vivamus at libero a est viverra convallis eu nec mi. Praesent suscipit diam at ligula commodo sagittis.",
        "Integer porta purus vel condimentum rutrum. Fusce non magna ut neque egestas finibus. Duis tristique dui vel elementum mattis. Cras sit amet ex ut sem bibendum finibus. Cras ac nunc non ante aliquam pellentesque sit amet eget augue. Mauris fringilla dui sed sem ultrices tempor.",
        "In id turpis non nulla ornare lacinia. Curabitur vestibulum nisi quis viverra lobortis. Duis id justo gravida, bibendum ante quis, placerat mi. Nunc faucibus nunc eget eleifend vehicula. Nullam malesuada justo non erat lacinia scelerisque. >>simple as that<< Quisque convallis nibh eget eros vestibulum elementum. Sed ac massa non nulla maximus fermentum nec eget libero. Morbi iaculis turpis sit amet orci molestie, ac ullamcorper tellus venenatis. Nam vel felis a lectus imperdiet consectetur ut nec ex.",
        "Phasellus sit amet orci a nisi placerat hendrerit non pretium felis. >>simple as that<< Integer ac metus placerat, convallis dolor vitae, dapibus arcu. Quisque viverra quam sit amet interdum consequat.",
        "Sed vestibulum est non mauris vulputate, sit amet fermentum nulla malesuada. Vestibulum sodales ex ut mi fermentum, ac tincidunt arcu mattis. Ut auctor ligula nec turpis cursus, at commodo neque feugiat. Curabitur sed ante dictum, tempor lectus in, ultrices massa. Nunc ultrices eros a vehicula condimentum. Praesent dictum orci imperdiet lobortis pulvinar. Sed vehicula ligula quis dui scelerisque pretium. Sed dapibus dolor a felis porta imperdiet. >>simple as that<< Suspendisse quis eros ut ipsum facilisis finibus.",
        "Phasellus vitae urna vulputate, commodo nulla quis, scelerisque sem. Praesent mattis nulla efficitur, sollicitudin quam quis, maximus mi. Phasellus mollis metus et ultrices mollis. Cras malesuada nisi vel hendrerit blandit. Aliquam ac ligula vitae ex mollis rhoncus. Integer nec felis id turpis rutrum pretium eu ac justo. Morbi finibus libero consequat enim accumsan semper. Sed vel turpis luctus, lobortis quam eget, malesuada nunc. Vestibulum a lacus dignissim, finibus nulla ut, commodo tortor. Sed molestie orci mollis lorem rutrum, sit amet interdum velit pharetra. Curabitur maximus turpis porta ante vulputate, sed accumsan felis blandit. Curabitur vitae arcu eu ligula laoreet tincidunt vitae a nulla. Ut ullamcorper mi at nibh condimentum fermentum. Suspendisse non magna eu risus tincidunt blandit.",
        "Cras in nisi vel turpis facilisis fermentum eget nec turpis. Donec vehicula leo ut congue semper. Integer elementum est in erat blandit fringilla. Sed ullamcorper massa eget ligula vulputate consequat. Phasellus accumsan ante ac congue finibus. Mauris id libero auctor, consectetur risus quis, bibendum orci. Fusce placerat nibh in quam lacinia iaculis. Aenean blandit lectus consequat ipsum malesuada, viverra mollis dolor vestibulum. Pellentesque et mi a massa mollis semper at in eros. In eu risus accumsan, tristique risus ac, scelerisque justo. Pellentesque ac orci sed ligula lacinia tincidunt.",
        "Morbi scelerisque quam vel orci elementum varius. Curabitur nec elit quis ligula sagittis finibus. Curabitur fermentum nibh sit amet massa congue tincidunt id quis lacus. Donec commodo urna quis justo hendrerit bibendum. Fusce interdum sapien vitae molestie placerat. >>simple as that<< Nulla tempus dolor in mi interdum consequat. Donec accumsan orci volutpat placerat vehicula. Nulla nec odio tempor, tincidunt quam vitae, sollicitudin lorem. Curabitur vitae urna a lacus finibus malesuada a eget metus. Aenean non felis eu quam ornare consequat.",
        "Sed ultrices tortor mollis, venenatis lectus a, congue ligula. Nam eget nisi vitae risus pulvinar gravida. Nulla ultricies velit non molestie hendrerit. Etiam rutrum orci vestibulum erat iaculis molestie. Sed pharetra tellus nec ante dictum, pharetra eleifend justo tincidunt. Vivamus eget nunc vel turpis mollis venenatis. Vivamus eget magna sollicitudin, tempus mi et, tincidunt nisl. Morbi pulvinar nulla et eleifend gravida.",
        "Ut eleifend diam quis massa molestie, fermentum placerat urna blandit. >>simple as that<< Praesent et elit quis ante facilisis accumsan at eu metus. Mauris viverra quam non nisl tincidunt, in pellentesque odio elementum. Nam ornare mauris at sodales bibendum. Fusce ut magna ac neque porta fringilla vel id dolor. Morbi efficitur velit id purus suscipit malesuada.",
        "Mauris viverra tellus eu justo maximus laoreet. Curabitur maximus magna et velit venenatis, a bibendum ipsum mollis. Donec pellentesque purus gravida, consectetur nunc eu, viverra turpis. Nullam eu ante suscipit, varius urna sit amet, ultricies turpis. Nam a nibh et sem hendrerit fermentum. Nullam ac quam in magna accumsan pulvinar.",
        "In sed neque sed urna aliquam fringilla ac eu dolor. Nunc fermentum libero et mi laoreet, euismod egestas odio molestie. Sed dapibus magna in lectus facilisis, a congue felis tempor. Sed condimentum ligula in ultrices elementum. Aliquam eu nisi eu est maximus aliquam sit amet sit amet nisl. Cras eu elit at leo aliquam aliquet posuere et tellus. Donec vitae ex viverra, aliquet urna a, cursus nulla.",
        "Vivamus eget mi non libero tristique accumsan in a tortor. >>simple as that<< Curabitur posuere elit id ipsum molestie, sed dapibus elit pharetra. Aenean sed nulla consequat, feugiat ipsum ac, feugiat nisi. Nulla vitae magna imperdiet, mollis neque ac, feugiat magna. Quisque quis velit ornare, mattis nulla vel, sodales nunc. Nullam pellentesque augue a augue dignissim iaculis. Suspendisse eget dolor dictum, molestie nisi non, placerat elit. Sed volutpat tortor ac viverra hendrerit.",
        "Integer quis felis mattis lectus rhoncus volutpat id vitae dui. Ut tristique velit a nisl ultrices, varius tincidunt risus rhoncus. Curabitur a metus a erat facilisis convallis ut et ligula. Pellentesque aliquet mi et quam interdum, ac dapibus sapien gravida. Sed auctor lorem vel iaculis volutpat.",
        "Nulla cursus nulla sed feugiat mollis. Phasellus malesuada ipsum sit amet sapien condimentum finibus. Donec ut ex nec magna molestie iaculis fermentum id neque. Integer mollis libero sit amet est auctor pulvinar. Pellentesque vitae velit sit amet ante ullamcorper gravida. In a velit ullamcorper, interdum nisi et, auctor magna."
    ]

    private let searchController: UISearchController = {

        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchController.searchBar.accessibilityIdentifier = "SearchBar"
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.tintColor = #colorLiteral(red: 0.8360546875, green: 0.8360546875, blue: 0.8360546875, alpha: 1)
        searchController.searchBar.barStyle = .black
        searchController.searchBar.sizeToFit()
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.returnKeyType = .done

        return searchController

    }()


    private var searchText = String()

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        searchController.searchBar.isTranslucent = false
        navigationItem.searchController = searchController

        searchController.searchBar.delegate = self

    }

    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return items.count }

    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else { return UITableViewCell() }

        cell.textLabel?.setText(value: items[indexPath.row], highlight: searchText)

        return cell

    }

}

/// UILabel helper extension
extension UILabel {

    /**
     Highlight text in a label.

     - parameter value: The full text.
     - parameter highlight: The text to be highlighted.
     */
    func setText(value: String?, highlight: String?) {

        guard let value = value, let highlight = highlight else { return }

        let attributedText = NSMutableAttributedString(string: value)
        let range = (value as NSString).range(of: highlight, options: .caseInsensitive)
        let strokeTextAttributes: [NSAttributedString.Key: Any] = [
            .backgroundColor: UIColor.yellow,
            .foregroundColor: UIColor.black
        ]

        attributedText.addAttributes(strokeTextAttributes, range: range)
        self.attributedText = attributedText

    }

}

/// UISearchBarDelegate
extension ViewController: UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        self.searchText = searchText
        tableView.reloadData()

    }

}
