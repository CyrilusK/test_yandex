import Foundation

func uniqueEmails(_ emails: [String]) -> Int {
    var setOfEmails = Set<String>()
    for email in emails {
        let filterMail = email.components(separatedBy: "@")
        var name = filterMail[0]
        if name.contains("-") {
            let indexDefis = name.firstIndex(of: "-")!
            name = String(name[name.startIndex...name.index(before: indexDefis)])
        }
        if name.contains(".") {
            name = name.filter {$0 != "."}
        }
        var domain = filterMail.last!
        let indexPoint = domain.lastIndex(of: ".")!
        domain = String(domain[domain.startIndex...domain.index(before: indexPoint)])
        setOfEmails.insert(name + "@" + domain)
    }
    //print(setOfEmails)
    return setOfEmails.count
}

let n = Int(readLine()!)!
var emails = [String]()
for _ in 0 ..< n {
    emails.append(readLine()!)
}
print(uniqueEmails(emails))


/*print(uniqueEmails(["s.t.a.l.k.e.r.@yandex.ru",
             "stalker-winner@yandex.com"]))
print(uniqueEmails(["user@yandex.ru",
              "user@ya.ru"]))
print(uniqueEmails(["s.t.a.l.k.e.r.@yandex.ru",
              "stalker-winner@yandex.com",
              "user@yandex.ru",
              "user@mail.yandex.ru"]))
print(uniqueEmails(["super@mail.yandex.ru",
                    "super@mail.yandex.com",
                    "super@yandex.com",
                    "super@yandex.co.uk"]))
 */

