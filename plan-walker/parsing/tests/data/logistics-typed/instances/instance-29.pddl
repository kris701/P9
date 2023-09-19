(define (problem log-x-1)
   (:domain logistics)
   (:objects package6 package5 package4 package3 package2 package1
             - package
             city6 city5 city4 city3 city2 city1 - city
             truck6 truck5 truck4 truck3 truck2 truck1 - truck
             plane2 plane1 - airplane
             city6-1 city5-1 city4-1 city3-1 city2-1 city1-1 - location
             city6-2 city5-2 city4-2 city3-2 city2-2 city1-2 - airport)
   (:init (in-city city6-2 city6)
          (in-city city6-1 city6)
          (in-city city5-2 city5)
          (in-city city5-1 city5)
          (in-city city4-2 city4)
          (in-city city4-1 city4)
          (in-city city3-2 city3)
          (in-city city3-1 city3)
          (in-city city2-2 city2)
          (in-city city2-1 city2)
          (in-city city1-2 city1)
          (in-city city1-1 city1)
          (at plane2 city4-2)
          (at plane1 city4-2)
          (at truck6 city6-1)
          (at truck5 city5-1)
          (at truck4 city4-1)
          (at truck3 city3-1)
          (at truck2 city2-1)
          (at truck1 city1-1)
          (at package6 city3-1)
          (at package5 city4-2)
          (at package4 city1-1)
          (at package3 city1-1)
          (at package2 city1-2)
          (at package1 city2-1))
   (:goal (and (at package6 city1-2)
               (at package5 city6-2)
               (at package4 city3-2)
               (at package3 city6-1)
               (at package2 city6-2)
               (at package1 city2-1))))