//
//  main.swift
//  quickSort
//
//  Created by lt on 16/3/22.
//  Copyright © 2016年 偏文不羁. All rights reserved.
//

import Foundation


class QuickSort : NSObject
{
    var list:Array<Int> = [2, 4, 5, 9, 10, 7, 12, 66, 1, 5, 32, 8]
    
    func quickSort() ->Void
    {
        self.quickSortByFirstAndEnd(0, end: self.list.count - 1)
        print(self.list)
    }
    
    private func quickSortByFirstAndEnd(first:Int, end:Int) ->Void
    {
        if(first < end)
        {
            let mid:Int = self.findMidPiontByFirstAndEnd(first, end: end)
            self.quickSortByFirstAndEnd(first, end: mid - 1)
            self.quickSortByFirstAndEnd(mid + 1, end: end)
        }
    }
    
    private func findMidPiontByFirstAndEnd(first:Int, end:Int) ->Int
    {
        var index:Int = first - 1
        for(var i:Int = first; i < end; i++)
        {
            if(self.list[i] < self.list[end])
            {
                index++
                self.exchange(index, i)
            }
        }
        index++
        self.exchange(index, end)
        return index
    }
    
    private func exchange(p:Int, _ q:Int) ->Void
    {
        if(p == q)
        {
            return
        }
        let temp = self.list[q]
        self.list[q] = self.list[p]
        self.list[p] = temp
    }
}

let qs:QuickSort = QuickSort.init()
qs.quickSort()




