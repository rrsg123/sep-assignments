Daily Algorithms Pseudocode

1. Starting a (manual) car
IF key is in ignition AND foot is on clutch THEN
    turn key clockwise
    IF car has gas THEN
        car.start
    ELSE
        print "Car won't start this way!"
    END
ELSE
    print "Car won't start this way!"
END


2. Buying groceries at a supermarket off a list
SET grocery_list to array of @items
SET supermarket_list to array of store_items
SET done to empty array
grocery_list.each { |x| puts x}
    IF x = store_items
        done.push(x)
    END
END


3. Waking up
SET x to time to wake up
(0..23).each do |i|
  IF i <= x
    print "WAKE UP"
  END
END  
