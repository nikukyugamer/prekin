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
  describe 'Datetimeクラス' do
    it '2020/10/29 23:59:59 +09:00 は prekin でないこと' do
      target_day = DateTime.new(
        2020, 10, 29,
        23, 59, 59,
        '+09:00'
      )
      expect(target_day.prekin?).to eq false
    end

    it '2020/10/30 00:00:00 +09:00 は prekin であること' do
      target_day = DateTime.new(
        2020, 10, 30,
        0, 0, 0,
        '+09:00'
      )
      expect(target_day.prekin?).to eq true
    end

    it '2020/10/30 23:59:59 +09:00 は prekin であること' do
      target_day = DateTime.new(
        2020, 10, 30,
        23, 59, 59,
        '+09:00'
      )
      expect(target_day.prekin?).to eq true
    end

    it '2020/10/31 00:00:00 +09:00 は prekin でないこと' do
      target_day = DateTime.new(
        2020, 10, 31,
        0, 0, 0,
        '+09:00'
      )
      expect(target_day.prekin?).to eq false
    end
  end
end
