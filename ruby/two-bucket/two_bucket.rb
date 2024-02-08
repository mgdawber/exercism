# frozen_string_literal: true


# Given two buckets of different size and which bucket to fill first, determine how 
# many actions are required to measure an exact number of liters by strategically transferring fluid between the buckets.
# There are some rules that your solution must follow:

# You can only do one action at a time.
# There are only 3 possible actions:
# Pouring one bucket into the other bucket until either: a) the first bucket is empty b) the second bucket is full
# Emptying a bucket and doing nothing to the other.
# Filling a bucket and doing nothing to the other.
# After an action, you may not arrive at a state where the starting bucket is empty and the other bucket is full.

class TwoBucket
  def initialize(bucket_one_size, bucket_two_size, goal, start_bucket)
    @bucket_one_size = bucket_one_size
    @bucket_two_size = bucket_two_size
    @goal = goal
    @start_bucket = start_bucket
  end

  def moves
    0
  end

  def goal_bucket
    ''
  end

  def other_bucket
    0
  end
end
