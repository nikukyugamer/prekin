# Prekin

[![Prekin](https://github.com/nikukyugamer/prekin/actions/workflows/config.yml/badge.svg?branch=main)](https://github.com/nikukyugamer/prekin/actions/workflows/config.yml)

## What is Prekin?

### Naming

- `Prekin` means `PREMIUM FRIDAY`
    - `kin` means FRIDAY (`kin-yo-bi`) in Japanese
    - So `PRE`mium `KIN`-yo-bi is `Prekin`

### Webpage

- A webpage by Ministry of Economy, Trade and Industry in Japan
    - <http://www.meti.go.jp/policy/mono_info_service/service/premium-friday/>
- A webpage by Premium Friday Committee
    - <https://web.archive.org/web/20230411145908if_/https://premium-friday.com/>

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'prekin'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install prekin
```

## Usage

### 1. require

- `require 'prekin'`

### 2. call

#### 2-1. Time class

- `Time.local(2020, 10, 30, 0, 0, 0).prekin? #=> true`

#### 2-2. Date class

- `Date.new(2020, 10, 30).prekin? #=> true`

#### 2-3. DateTime class

- `DateTime.new(2020, 10, 30, 0, 0, 0, '+09:00').prekin? #=> true`

#### 2-4. String class

- `'2020/10/30 00:00:00 +09:00'.prekin? #=> true`

#### 2-5. Next Prekin

- `Prekin.next #=> "2020-10-30"`
- `Prekin.next('2023-12-28') #=> "2023-12-29"`
- `Prekin.next('2023-12-29') #=> "2023-12-29"`
- `Prekin.next('2023-12-30') #=> "2024-01-26"`

## Note

- This gem overwrites `Time`, `Date`, `DateTime` and `String` class.
    - So if you use `Time`, `Date`, `DateTime` and `String` class in your code, you should be careful.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
