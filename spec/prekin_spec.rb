# 10月 2020
# 日 月 火 水 木 金 土
#              1  2  3
#  4  5  6  7  8  9 10
# 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24
# 25 26 27 28 29 30 31
#
# 1月 2020
# 日 月 火 水 木 金 土
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29 30 31

# 10月 2019
# 日 月 火 水 木 金 土
#        1  2  3  4  5
#  6  7  8  9 10 11 12
# 13 14 15 16 17 18 19
# 20 21 22 23 24 25 26
# 27 28 29 30 31

RSpec.describe Prekin do
  describe 'クラスメソッド' do
    describe '#next' do
      xit '2023/09/05 における next は 2023/09/29 であること（日時指定なし）' do
        # TODO: travel_to や Timecop が必要
        next_day = Prekin.next

        expect(next_day).to eq '2023-09-29'
      end

      it '2023/09/05 における next は 2023/09/29 であること（日時指定あり）' do
        next_day = Prekin.next('2023-09-05')

        expect(next_day).to eq '2023-09-29'
      end

      it '2023/09/30 における next は 2023/10/27 であること（日時指定あり）' do
        next_day = Prekin.next('2023-09-30')

        expect(next_day).to eq '2023-10-27'
      end

      it '2023/12/28 における next は 2023/12/29 であること（日時指定あり）' do
        next_day = Prekin.next('2023-12-28')

        expect(next_day).to eq '2023-12-29'
      end

      it '2023/12/30 における next は 2024/01/26 であること（日時指定あり）' do
        next_day = Prekin.next('2023-12-30')

        expect(next_day).to eq '2024-01-26'
      end

      it '2022/12/24 における next は 2022/12/30 であること（日時指定あり）' do
        next_day = Prekin.next('2022-12-24')

        expect(next_day).to eq '2022-12-30'
      end

      it '2022/12/30 における next は 2022/12/30 であること（日時指定あり）' do
        next_day = Prekin.next('2022-12-30')

        expect(next_day).to eq '2022-12-30'
      end

      it '2022/12/31 における next は 2023/01/27 であること（日時指定あり）' do
        next_day = Prekin.next('2022-12-31')

        expect(next_day).to eq '2023-01-27'
      end
    end

    describe '#previous' do
      xit '2023/09/05 における previous は 2023/08/25 であること（日時指定なし）' do
        # TODO: travel_to や Timecop が必要
        previous_day = Prekin.previous

        expect(previous_day).to eq '2023-08-25'
      end

      xit '2023/09/05 における previous は 2023/08/25 であること（日時指定あり）' do
        previous_day = Prekin.previous('2023-09-05')

        expect(previous_day).to eq '2023-08-25'
      end
    end
  end
end
