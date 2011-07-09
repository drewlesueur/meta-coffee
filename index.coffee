stuff = """

obj = {}
obj.property = 10

obj.property = whatever.some

a some.whatever.freind()

$(document.body).ready () -> alert yo.hi

alpha["numeric"].safe["equal"]

"""

# console.log stuff.replace /a/, (a, b, c) ->



str = """
  a friend.someone is someone who friends me. this.that.other b[stuff].what.the
  $(document.body).html()
"""
console.log str.replace ///
  [\w]+
  (
   \.[\w]+
  |
   \[[^\]]+\]
  )+
///g, (m) -> return "(#{m})"

str2 = """
  this.a = 1
  this.save
  this.save.winkey(() -> 
    person.smoking
  ).eat(() ->
    return test
  ).pckls

"""

str2 = str2.replace /(.*)\=(.*)/g, (m, a, b) -> "(set #{a}, #{b})"
str2 = str2.replace /(\s|\()+([\w]+)\./g, (m,space, a, b) -> "#{space}(p #{a})."
str2 = str2.replace /\.([\w]+)\b(?=.)/g, (m,  a, b) -> "(\"#{a}\")"
str2 = str2.replace /\.([\w]+)\b/g, (m,  a, b) -> "(\"#{a}\")()"
console.log str2





