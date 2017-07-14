//
//  Configuration+Parsing.swift
//  SwiftLint
//
//  Created by JP Simard on 7/13/17.
//  Copyright © 2017 Realm. All rights reserved.
//

import Foundation

extension Configuration {
    internal enum Key: String {
        case cachePath = "cache_path"
        case disabledRules = "disabled_rules"
        case enabledRules = "enabled_rules" // deprecated in favor of optInRules
        case excluded = "excluded"
        case included = "included"
        case optInRules = "opt_in_rules"
        case reporter = "reporter"
        case swiftlintVersion = "swiftlint_version"
        case useNestedConfigs = "use_nested_configs" // deprecated
        case warningThreshold = "warning_threshold"
        case whitelistRules = "whitelist_rules"
    }

    internal static func validKeys(ruleList: RuleList) -> [String] {
        return [
            Key.cachePath,
            .disabledRules,
            .enabledRules,
            .excluded,
            .included,
            .optInRules,
            .reporter,
            .swiftlintVersion,
            .useNestedConfigs,
            .warningThreshold,
            .whitelistRules
        ].map({ $0.rawValue }) + ruleList.allValidIdentifiers()
    }
}
