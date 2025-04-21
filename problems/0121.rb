# You are given an array prices where prices[i] is the price of a given stock
# on the ith day.
#
# You want to maximize your profit by choosing a single day to buy one stock
# and choosing a different day in the future to sell that stock.
#
# Return the maximum profit you can achieve from this transaction. If you cannot
# achieve any profit, return 0.

# I encountered this one in a technical interview. My original (naive) solution
# used two for loops but had a time complexity of O(n^2). This solution should
# have a time complexity of O(n).

module Problem0121
  def self.max_profit(prices)
    buy = prices[0]
    profit = 0

    prices.each do |price|
      buy = price if price < buy
      profit = price - buy if price - buy > profit
    end

    profit
  end
end
