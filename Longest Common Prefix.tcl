proc longest_common_prefix strs {
    if {[llength $strs] == 0} {return ""}
    set prefix [lindex $strs 0]
    foreach str [lrange $strs 1 end] {
        while {[string first $prefix $str] != 0} {
            set prefix [string range $prefix 0 end-1]
            if {[string length $prefix] == 0} {return ""}
        }
    }
    return $prefix
}

# Example Usage:
puts [longest_common_prefix {flower flow flight}] # Output: "fl"
