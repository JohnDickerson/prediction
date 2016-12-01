class TradesController < ApplicationController
    @iribe_b = 100
    @market2_b = 100
    @market3_b = 100

    def sell_for(market, num_shares)
        calc_price(market, -1*num_shares, 'f')
    end

    def sell_against(market, num_shares)
        calc_price(market, -1*num_shares, 'a')
    end

    def buy_for(market, num_shares)
        calc_price(market, num_shares, 'f')
    end

    def buy_against(market, num_shares)
        calc_price(market, num_shares, 'a')
    end

    def calc_price(market, num_shares, flag)
        #get num shares bought for and against from table
        q1;
        q2;
        b;
        if flag == 'f'
            c1= get_cost(b,q1+num_shares,q2)
        elsif flag == 'a'
            c1= get_cost(b,q1,q2+num_shares)
        else
            print('error')
        end
        c2 = get_cost(b,q1,q2)
        #C(newnums) - C(old nums)
        c1 - c2
    end

    def get_price(market, event)
      #e^q1/b/(e^q1/b + e^q2/b)
      #MUST PASS IN EVENT
      num_event;
      q1;
      q2;
      Math.exp(num_event/b)/(Math.exp(num_for/b) + Math.exp(num_against/b))
    end

    def get_price_at_time(market, event, time)
      #e^q1/b/(e^q1/b + e^q2/b)
      #MUST PASS IN EVENT
      num_event;
      q1;
      q2;
      Math.exp(num_event/b)/(Math.exp(num_for/b) + Math.exp(num_against/b))
    end

    def get_cost(b,num_for,num_against)
        #b*log(e^q1/b + e^q2/b)
        b * Math.log(Math.exp(num_for/b) + Math.exp(num_against/b))
    end

end
