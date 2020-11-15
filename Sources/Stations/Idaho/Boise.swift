//
//  Boise.swift
//  
//
//  Created by Christopher Weems on 11/14/20.
//

extension Idaho {
    struct Boise: _StationGroup {
        var stations: Set<Station> {
            
            // fm stations
            
            Station("krrb", .fm(88, 1))
            Station("koay", .fm(88, 7))
            Station("kaws", .fm(89, 1))
            Station("ktsy", .fm(89, 5))
            Station("krbx", .fm(89, 9))
            Station("kbsu", .fm(90, 3))
            Station("kgcl", .fm(90, 9))
            Station("kbsx", .fm(91, 5))
            Station("kizn", .fm(92, 3))
            
            Station("ktik-fm", .fm(93, 1), "The Ticket")
                .frequencyDesignator(.hidden)
                .owner(.cumulusMedia)
            
            Station("kbxl", .fm(94, 1))
            Station("krvb", .fm(94, 9))
            Station("ksrv", .fm(96, 1))
            Station("kkgl", .fm(96, 9))
            Station("kidh-lp", .fm(97, 5))
            Station("kqfc", .fm(97, 9))
            Station("karo", .fm(98, 7))
            Station("klxi", .fm(99, 5))
            Station("kqxr", .fm(100, 3))
            Station("kpda", .fm(100, 7))
            Station("kwyd", .fm(101, 1))
            Station("kqbl", .fm(101, 9))
            
            Station("kicd", .fm(102, 5))
                .url(authority: "kicdam.com")
            
            Station("kzmg", .fm(102, 7))
            Station("ksas", .fm(103, 5))
            Station("kawo", .fm(104, 3))
            Station("kjot", .fm(105, 1))
            Station("kcix", .fm(105, 9))
            Station("kdbi-fm", .fm(106, 3))
            Station("kthi", .fm(107, 1))
            Station("kxlt", .fm(107, 9))
            
            
            // am stations
            
            Station("kido", .am(580))
            Station("kfxd", .am(630))
            Station("kboi", .am(670))
            Station("kdbi", .am(730))
            Station("kspd", .am(790))
            Station("kywn", .am(890))
            Station("kmhr", .am(950))
            Station("kbgn", .am(1060))
            Station("kgem", .am(1140))
            Station("kmhi", .am(1240))
            Station("kkoo", .am(1260))
            Station("ktik", .am(1350))
            Station("ktrp", .am(1450))
            Station("kcid", .am(1490))
            
        }
        
    }
    
}
