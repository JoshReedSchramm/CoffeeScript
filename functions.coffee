console.log do -> 'Hello, functions!'

hi = -> 'Hello, functions!'
console.log hi()

greeting = (subject) -> "Hello, #{subject}!"
console.log greeting 'arguments'

cube = (num) -> Math.pow num, 3
odd = (num) -> 
  if typeof num is 'number'
    if num is Math.round num
      if num > 0
        num % 2 is 1
      else
        throw "#{num} is not positive"
    else
      throw "#{num} is not an integer"
  else
    throw "#{num} is not a number"
   
console.log odd 5

try
  odd 5.1

catch e
  console.log e


odd = (num) ->
  unless typeof num is 'number'
    throw "#{num} is not a number"
  unless num is Math.round num
    throw "#{num} is not an integer"
  unless num > 0
    throw "#{num} is not positive"
  num % 2 is 1

try
  odd "hello"

catch e
  console.log e


count = 0
incrementCount = -> count++
incrementCount()
console.log count


# 2.2 Scope

singCountdown = (count) ->
  singBottleCount = (specifyLocation) ->
    locationStr = if specifyLocation then 'on the wall' else ''
    bottleStr = if count is 1 then 'bottle' else 'bottles'
    console.log "#{count} #{bottleStr} of beer #{locationStr}"
  singDecrement = ->
    console.log "Take one down, pass it around"
    count--
  singBottleCount true; singBottleCount false
  singDecrement(); singBottleCount true
  if count isnt 0 then singCountdown count

singCountdown 10
