proc climb_stairs n {
    if {$n <= 1} {return 1}
    set dp [list 0 1 2]
    for {set i 3} {$i <= $n} {incr i} {
        lappend dp [expr {[lindex $dp end] + [lindex $dp end-1]}]
    }
    return [lindex $dp end]
}

# Example Usage:
puts [climb_stairs 5] # Output: 8
