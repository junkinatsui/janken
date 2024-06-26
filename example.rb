QUIT_COMMAND = 3

class JankenMatch
  RESULTS = ["勝ち", "アイコ", "負け"]
  SELECTS = ["グー", "チョキ", "パー", "戦わない"]
  COMBINATIONS_FOR_WIN = [
    {
      player_select: "グー",
      cpu_select: "チョキ",
    },
    {
      player_select: "チョキ",
      cpu_select: "パー",
    },
    {
      player_select: "パー",
      cpu_select: "グー",
    }
  ]

  attr_accessor :player_select, :cpu_select

  def initialize(player_select:, cpu_select:)
    self.player_select = player_select
    self.cpu_select = cpu_select
  end

  def win?
    COMBINATIONS_FOR_WIN.include?(
      {
        player_select: SELECTS[player_select],
        cpu_select: SELECTS[cpu_select],
      }
    )
  end

  def aiko?
    player_select == cpu_select
  end

  def lose?
    !win? && !aiko?
  end
end

class AcchimuiteMatch
  SELECTS = ["上", "右", "下", "左"]
end

def gets_select(selects, call:)
  selected = nil

  while selected.nil?
    puts call
    puts selects.map.with_index { |s, i| "#{i}:#{s} " }.join

    input = gets.to_i
    if selects[input]
      selected = input
    else
      puts "入力値が不正です。再度ご確認ください。"
    end
  end

  selected
end

def janken(player_select, call:)
  cpu_select = rand(0..2)

  puts call
  puts "ーーーーーーーーーー"
  puts "あなた：#{JankenMatch::SELECTS[player_select]}を出しました"
  puts "相手：#{JankenMatch::SELECTS[cpu_select]}を出しました"
  puts "ーーーーーーーーーー"

  JankenMatch.new(player_select: player_select, cpu_select: cpu_select)
end

def win_or_lose_by_acchimuite_hoi?(result)
  player_select = gets_select(AcchimuiteMatch::SELECTS, call: "あっち向いて・・・")
  cpu_select = rand(0..3)

  puts "ホイ！"
  puts "ーーーーーーーーーー"
  puts "あなた：#{AcchimuiteMatch::SELECTS[player_select]}"
  puts "相手：#{AcchimuiteMatch::SELECTS[cpu_select]}"
  puts "ーーーーーーーーーー"

  return false if player_select != cpu_select

  puts "あなたの#{result.win? ? "勝ち" : "負け"}です。"

  true
end

def execute
  call_before_selected, call_after_selected = "じゃんけん・・・", "ホイ！"

  while true
    player_select = gets_select(JankenMatch::SELECTS, call: call_before_selected)

    if player_select == QUIT_COMMAND
      return puts "また遊びましょう！"
    end

    result = janken(player_select, call: call_after_selected)

    if result.aiko?
      call_before_selected, call_after_selected = "アイコで・・・", "ショ！"
    else
      return if win_or_lose_by_acchimuite_hoi?(result)
      call_before_selected, call_after_selected = "じゃんけん・・・", "ホイ！"
    end
  end
end

execute