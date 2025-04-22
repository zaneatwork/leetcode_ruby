# You are given an integer array prices where prices[i] is the price of a given
# stock on the ith day.
#
# On each day, you may decide to buy and/or sell the stock. You can only hold
# at most one share of the stock at any time. However, you can buy it then
# immediately sell it on the same day.
#
# Find and return the maximum profit you can achieve.
#
# Oooh, we get to use a greedy algorithm. Snazzy.

module Problem0122
  def self.max_profit(prices)
    profit = 0
    (0...prices.length - 1).each do |i|
      profit += prices[i+1] - prices[i] if prices[i+1] - prices[i] > 0
    end
    profit
  end
end
