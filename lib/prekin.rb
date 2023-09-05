require 'prekin/version'
require 'prekin/extend_date_class'
require 'prekin/extend_datetime_class'
require 'prekin/extend_string_class'
require 'prekin/extend_time_class'

module Prekin
  class Error < StandardError; end

  class << self
    # TODO: 月および年をまたぐ場合の処理が都度都度になっており、複雑すぎる
    def next(year_month_str = nil) # rubocop:disable Metrics/AbcSize, Metrics/PerceivedComplexity
      base_month = if year_month_str.nil?
                     Date.today.month
                   else
                     Date.parse(year_month_str).month
                   end
      end_day_of_this_month = if year_month_str.nil?
                                Date.new(Date.today.year, base_month, -1)
                              else
                                Date.new(
                                  Date.parse(year_month_str).year,
                                  base_month,
                                  -1
                                )
                              end
      days_in_month = end_day_of_this_month.day

      # 現在の月を1日ずつ増やしながら、その日が金曜日かどうかをチェックする
      dates = []
      for i in 1..days_in_month # rubocop:disable Style/For
        date = if year_month_str.nil?
                 Date.new(Date.today.year, base_month, i)
               else
                 Date.new(Date.parse(year_month_str).year, base_month, i)
               end

        dates << date if date.wday == 5
      end

      # 金曜日である日付を配列で得て、最終金曜日を返す (String)
      if dates.last < Date.parse(year_month_str || Date.today.to_s)
        end_day_of_next_month = if year_month_str.nil?
                                  if base_month == 12
                                    Date.new(Date.today.year + 1, 1, -1)
                                  else
                                    Date.new(Date.today.year, base_month + 1, -1)
                                  end
                                elsif base_month == 12
                                  Date.new(
                                    Date.parse(year_month_str).year + 1,
                                    1,
                                    -1
                                  )
                                else
                                  Date.new(
                                    Date.parse(year_month_str).year,
                                    base_month + 1,
                                    -1
                                  )
                                end
        days_in_month = end_day_of_next_month.day

        dates = []
        for i in 1..days_in_month # rubocop:disable Style/For
          date = if year_month_str.nil?
                   if base_month == 12 # rubocop:disable Metrics/BlockNesting
                     Date.new(Date.today.year + 1, 1, i)
                   else
                     Date.new(Date.today.year, base_month + 1, i)
                   end
                 elsif base_month == 12
                   Date.new(Date.parse(year_month_str).year + 1, 1, i)
                 else
                   Date.new(Date.parse(year_month_str).year, base_month + 1, i)
                 end

          dates << date if date.wday == 5
        end
      end

      dates.last.to_s
    end
  end
end
