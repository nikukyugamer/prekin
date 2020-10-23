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
