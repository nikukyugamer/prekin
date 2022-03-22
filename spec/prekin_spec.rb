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
  it 'has a version number' do
    expect(Prekin::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(false)
  end

  it 'returns true in case of prekin' do
    # FIXME: 日本時間へ
    target_day = DateTime.new(2020, 10, 30)
    expect(target_day.prekin?).to eq true
  end
end
