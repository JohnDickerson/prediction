class TradesController < ApplicationController

#!!need to go back and decide on what to do if error

    def sell_long(market_id, num_shares, user_id)
        price = calc_price(market_id, -1*num_shares, 'l')
        #!!!!!!go back and handle error case
        user_longs = get_longs(user_id, market_id)
        if num_shares > user_longs
            puts "You don't own this."
        else
            # changing user data
            balance = get_balances(user_id)
            new_balance = balance - price
            set_balance(user_id, new_balance)
            trades = get_trades(user_id)
            set_trades(user_id, trades + num_shares)

            # changing shares data
            set_longs(user_id, market_id, user_longs - num_shares)

            # changing market data
            market_longs = get_longs(market_id)
            set_longs(market_id, market_longs - num_shares)

            #changing transactions data
            #!!!!add time
            add_transaction(market_id, user_id, num_shares, 0, cost, cost/num_shares, get_price(market_id))
        end
    end

    def sell_short(market, num_shares)
        price = calc_price(market_id, -1*num_shares, 's')
        #!!!!!!go back and handle error case
        user_shorts = get_shorts(user_id, market_id)
        if num_shares > user_shorts
            puts "You don't own this."
        else
            # changing user data
            balance = get_balances(user_id)
            new_balance = balance - price
            set_balance(user_id, new_balance)
            trades = get_trades(user_id)
            set_trades(user_id, trades + num_shares)

            # changing shares data
            set_shorts(user_id, market_id, user_shorts - num_shares)

            # changing market data
            market_shorts = get_shorts(market_id)
            set_shorts(market_id, market_shorts - num_shares)

            #changing transactions data
            #!!!!add time
            add_transaction(market_id, user_id, 0, num_shares, cost, cost/num_shares, get_price(market_id))
        end
    end

    def buy_long(market, num_shares)
        price = calc_price(market_id, -1*num_shares, 'l')
        #!!!!!!go back and handle error case
        balance = get_balance(user_id)
        if cost > price
            puts "You don't have enough money."
        else
            # changing user data
            balance = get_balances(user_id)
            new_balance = balance - price
            set_balance(user_id, new_balance)
            trades = get_trades(user_id)
            set_trades(user_id, trades + num_shares)

            # changing shares data
            set_longs(user_id, market_id, user_longs + num_shares)

            # changing market data
            market_longs = get_longs(market_id)
            set_longs(market_id, market_longs + num_shares)

            #changing transactions data
            #!!!!add time
            add_transaction(market_id, user_id, num_shares, 0, cost, cost/num_shares, get_price(market_id))
        end
    end

    def buy_short(market, num_shares)
        price = calc_price(market_id, -1*num_shares, 'l')
        #!!!!!!go back and handle error case
        balance = get_balance(user_id)
        if cost > price
            puts "You don't have enough money."
        else
            # changing user data
            balance = get_balances(user_id)
            new_balance = balance - price
            set_balance(user_id, new_balance)
            trades = get_trades(user_id)
            set_trades(user_id, trades + num_shares)

            # changing shares data
            set_shorts(user_id, market_id, user_shorts + num_shares)

            # changing market data
            market_shorts = get_shorts(market_id)
            set_shorts(market_id, market_shorts + num_shares)

            #changing transactions data
            #!!!!add time
            add_transaction(market_id, user_id, 0, num_shares, cost, cost/num_shares, get_price(market_id))
        end
    end

    def calc_price(market_id, num_shares, flag)
        #get num shares bought for and against from table
        q1 = get_longs(market_id);
        q2 = get_short(market_id;
        b = get_b_val(market_id);
        if flag == 'l'
            c1= get_cost(b,q1+num_shares,q2)
        elsif flag == 's'
            c1= get_cost(b,q1,q2+num_shares)
        else
            print('error')
        end
        c2 = get_cost(b,q1,q2)
        #C(newnums) - C(old nums)
        return c1 - c2
    end

    def get_price(market_id)
      #e^q1/b/(e^q1/b + e^q2/b)
      q1 = get_price(market_id);
      q2 = get_price(market_id);
      return Math.exp(num_event/b)/(Math.exp(num_for/b) + Math.exp(num_against/b))
    end

#    def get_cost(b,num_for,num_against)
#        #b*log(e^q1/b + e^q2/b)
#        b * Math.log(Math.exp(num_for/b) + Math.exp(num_against/b))
#    end

end
