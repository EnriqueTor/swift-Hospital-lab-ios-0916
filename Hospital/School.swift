//
//  School.swift
//  Hospital

protocol Payable {
    
    func wages() -> Double
    
}

extension Payable {
    
    func wages() -> Double {
        return 50_000.00
    }
    
}

protocol TimeOff {
    
    var vacationDays: Int {get set}
    
    func requestForVacation(_ days: Int) -> Bool
    
}

extension TimeOff {
    
    func requestForVacation(_ days: Int) -> Bool {
        
        if vacationDays >= days {
            return true
        }
        return false
    }
    
}

enum Punishment {
    
    case Severe
    case Light
    case Medium
}

protocol Reprimand {
    
    func disciplineStudent(_ scale: Punishment) -> String
    
    func callParentDeliveringMessage(_ scale: Punishment) -> String
}

extension Reprimand {
    
    func disciplineStudent(_ scale: Punishment) -> String {
        
        if scale == Punishment.Severe {
            return "We are expelling you from the school!"
        }
        else if scale == Punishment.Light {
            return "You're to go back to class, don't do it again."
        }
        else if scale == Punishment.Medium {
            return "Why would you think that's a good idea?! You're going to detention."
        }
        return "No punishment"
    }
    
    func callParentDeliveringMessage(_ scale: Punishment) -> String {
        
        if scale == Punishment.Severe {
            return "Your child has been expelled from the school."
        }
        else if scale == Punishment.Light {
            return "Your child thought it was funny to put gum in Amy's hair."
        }
        else if scale == Punishment.Medium {
            return "Your child has become a terror in the classroom."
        }
        return "No call"
    }
    
}

enum Subject {
    
    case Math
    case Science
    case English
}

protocol Teach {
    
    func teachSubject(_ subjet: Subject) -> String
}

extension Teach {
    
    func teachSubject(_ subjet: Subject) -> String {
        
        if subjet == Subject.Math {
            return "Take out your math books please."
        }
        else if subjet == Subject.Science {
            return "Time to learn the best subject of all! Science!!"
        }
        else if subjet == Subject.English {
            return "To read or not to read. Everyone take out your english books."
        }
        return "No more teaching"
    }
}

protocol Employee: Payable, TimeOff {
    
}






