require 'gosu'
#Name = Eric Smith
#YouTube = Software-mlp/tts
#go subscribe
#hi if you see this

class Tictactoe < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = 'tic tac toe'
    @font = Gosu::Font.new(20)
    @font2 = Gosu::Font.new(150)
    $win = false
    $win2 = false
    $rectx = 65
    $recty = 25
    $rectx2 = 415
    $loopNum = 0
    $o = "x"
    $t = ["", "", "", "", "", "", "", "", ""]
    $p = [1, 0]
    $c = true
    $h = ["", "", "", "", "", "", "", "", ""]
  end
  class Player
    player = Player.new
  end
  class Player2
    player2 = Player2.new
  end
  def swapTurn
    if $c == true
      $c = false
    elsif $c == false
      $c = true
    end
    if $o == "x"
      $o = "o"
    elsif $o == "o"
      $o = "x"
    end
    sleep(0.2)
  end
  def update #runs once every frame
    if $c == true
      selectedcolor = "RED"
    elsif $c == false
      selectedcolor = "BLUE"
    end
   case mouse_x
     when (0..125)
       case mouse_y
         when (0..125)
           if button_down?(Gosu::MsLeft) 
             $t[0] = $o
             $h[0] = selectedcolor
             swapTurn
            end
         when (150..250)
             if button_down?(Gosu::MsLeft)
               $t[3] = $o
               $h[3] = selectedcolor
               swapTurn
             end
           when (270..400)
            if button_down?(Gosu::MsLeft)
              $t[6] = $o
              $h[6] = selectedcolor
              swapTurn
            end
          end
      when (175..235)
        case mouse_y
          when (0..125)
            if button_down?(Gosu::MsLeft)
              $t[1] = $o
              $h[1] = selectedcolor
              swapTurn
             end
           when (150..250)
             if button_down?(Gosu::MsLeft)
                $t[4] = $o
                $h[4] = selectedcolor
                swapTurn
             end
           when (270..400)
             if button_down?(Gosu::MsLeft)
              $t[7] = $o
              $h[7] = selectedcolor
              swapTurn
            end
           end
     when (275..375)
       case mouse_y
         when (0..130)
           if button_down?(Gosu::MsLeft)
             $t[2] = $o
             $h[2] = selectedcolor
             swapTurn
           end
         when (150..260)
          if button_down?(Gosu::MsLeft)
            $t[5] = $o
            $h[5] = selectedcolor
            swapTurn
          end
        when (270..400)
          if button_down?(Gosu::MsLeft)
            $t[8] = $o
            $h[8] = selectedcolor
            swapTurn
          end
         end
       end
       if $win == true or $win2 == true
        if mouse_x > 230 and mouse_x < 330
          if mouse_y > 320 and mouse_y < 340
            if button_down?(Gosu::MsLeft)
              $win = false
              $win2 = false
              $o = "x"
              $t = ["", "", "", "", "", "", "", "", ""]
              $p = [1, 0]
              $c = true
             $h = ["", "", "", "", "", "", "", "", ""]
            end
          end
        end
       end
     end
  def needs_cursor?
    true
  end
  def draw
    x = 150
    x2 = 300
    x3 = 120
    y = 200
    y2 = 120
    y3 = 300
    size = 400
    size2 = 25
    @font.draw("Tic tac toe", 550, 10, 12, 1.0, 1.0, Gosu::Color::YELLOW)
    draw_quad(x-size2, y-size, 0xffffffff, x+size2, y-size, 0xffffffff, x-size2, y+size, 0xffffffff, x+size2, y+size, 0xffffffff, 0)
    draw_quad(x2-size2, y-size, 0xffffffff, x2+size2, y-size, 0xffffffff, x2-size2, y+size, 0xffffffff, x2+size2, y+size, 0xffffffff, 0)
    draw_quad(x3-size, y2-size2, 0xffffffff, x3+size, y2-size2, 0xffffffff, x3-size, y2+size2, 0xffffffff, x3+size, y2+size2, 0xffffffff, 0)
    draw_quad(x3-size, y3-size2, 0xffffffff, x3+size, y3-size2, 0xffffffff, x3-size, y3+size2, 0xffffffff, x3+size, y3+size2, 0xffffffff, 0)
    if $win == false and $win2 == false
    if $h[0] == "RED" and $h[1] == "RED" and $h[2] == "RED"
    	draw_quad(30-size, 55-size2, 0xffff0000, 30+size, 55-size2, 0xffff0000, 30-size, 55+size2, 0xffff0000, 30+size, 55+size2, 0xffff0000, 0)
    	$win = true
    elsif $h[0] == "BLUE" and $h[1] == "BLUE" and $h[2] == "BLUE"
    	draw_quad(30-size, 55-size2, 0xff0000ff, 30+size, 55-size2, 0xff0000ff, 30-size, 55+size2, 0xff0000ff, 30+size, 55+size2, 0xff0000ff, 0)
    	$win2 = true
    end
    if $h[3] == "RED" and $h[4] == "RED" and $h[5] == "RED"
    	draw_quad(30-size, 205-size2, 0xffff0000, 30+size, 205-size2, 0xffff0000, 30-size, 205+size2, 0xffff0000, 30+size, 205+size2, 0xffff0000, 0)
    	$win = true
    elsif $h[3] == "BLUE" and $h[4] == "BLUE" and $h[5] == "BLUE"
    	draw_quad(30-size, 205-size2, 0xff0000ff, 30+size, 205-size2, 0xff0000ff, 30-size, 205+size2, 0xff0000ff, 30+size, 205+size2, 0xff0000ff, 0)
    	$win2 = true
    end
    if $h[6] == "RED" and $h[7] == "RED" and $h[8] == "RED"
    	draw_quad(30-size, 360-size2, 0xffff0000, 30+size, 360-size2, 0xffff0000, 30-size, 360+size2, 0xffff0000, 30+size, 360+size2, 0xffff0000, 0)
    	$win = true
    elsif $h[6] == "BLUE" and $h[7] == "BLUE" and $h[8] == "BLUE"
    	draw_quad(30-size, 360-size2, 0xff0000ff, 30+size, 360-size2, 0xff0000ff, 30-size, 360+size2, 0xff0000ff, 30+size, 360+size2, 0xff0000ff, 0)
    	$win2 = true
    end
    if $h[0] == "RED" and $h[3] == "RED" and $h[6] == "RED"
    	draw_quad(70-size2, 30-size, 0xffff0000, 70+size2, 30-size, 0xffff0000, 70-size2, 30+size, 0xffff0000, 70+size2, 30+size, 0xffff0000, 0)
    	$win = true
    elsif $h[0] == "BLUE" and $h[3] == "BLUE" and $h[6] == "BLUE"
    	draw_quad(70-size2, 30-size, 0xff0000ff, 70+size2, 30-size, 0xff0000ff, 70-size2, 30+size, 0xff0000ff, 70+size2, 30+size, 0xff0000ff, 0)
    	$win2 = true
    end
    if $h[1] == "RED" and $h[4] == "RED" and $h[7] == "RED"
      draw_quad(225-size2, 30-size, 0xffff0000, 225+size2, 30-size, 0xffff0000, 225-size2, 30+size, 0xffff0000, 225+size2, 30+size, 0xffff0000, 0)
      $win = true
    elsif $h[1] == "BLUE" and $h[4] == "BLUE" and $h[7] == "BLUE"
      draw_quad(225-size2, 30-size, 0xff0000ff, 225+size2, 30-size, 0xff0000ff, 225-size2, 30+size, 0xff0000ff, 225+size2, 30+size, 0xff0000ff, 0)
      $win2 = true
    end
    if $h[2] == "RED" and $h[5] == "RED" and $h[8] == "RED"
      draw_quad(380-size2, 30-size, 0xffff0000, 380+size2, 30-size, 0xffff0000, 380-size2, 30+size, 0xffff0000, 380+size2, 30+size, 0xffff0000, 0)
      $win = true
    elsif $h[2] == "BLUE" and $h[5] == "BLUE" and $h[8] == "BLUE"
      draw_quad(380-size2, 30-size, 0xff0000ff, 380+size2, 30-size, 0xff0000ff, 380-size2, 30+size, 0xff0000ff, 380+size2, 30+size, 0xff0000ff, 0)
      $win2 = true
    end
    if $h[0] == "RED" and $h[4] == "RED" and $h[8] == "RED"
    	while $loopNum <= 400
    		draw_quad($rectx-size2, $recty-size2, 0xffff0000, $rectx+size2, $recty-size2, 0xffff0000, $rectx-size2, $recty+size2, 0xffff0000, $rectx+size2, $recty+size2, 0xffff0000, 0)
    		$loopNum += 1
    		$rectx += 1
    		$recty += 1 
    	end
    	$loopNum = 0
    	$rectx = 65
    	$recty = 25
    	$win = true
    elsif $h[0] == "BLUE" and $h[4] == "BLUE" and $h[8] == "BLUE"
    	while $loopNum <= 400
    		draw_quad($rectx-size2, $recty-size2, 0xff0000ff, $rectx+size2, $recty-size2, 0xff0000ff, $rectx-size2, $recty+size2, 0xff0000ff, $rectx+size2, $recty+size2, 0xff0000ff, 0)
    		$loopNum += 1
    		$rectx += 1
    		$recty += 1
    	end 
    	$loopNum = 0
    	$rectx = 65
    	$recty = 25
    	$win2 = true
    end
    if $h[2] == "RED" and $h[4] == "RED" and $h[6] == "RED"
    	while $loopNum <=400
    		draw_quad($rectx2-size2, $recty-size2, 0xffff0000, $rectx2+size2, $recty-size2, 0xffff0000, $rectx2-size2, $recty+size2, 0xffff0000, $rectx2+size2, $recty+size2, 0xffff0000, 0)
    		$loopNum += 1
    		$rectx2 -= 1
    		$recty += 1
    	end 
    	$loopNum = 0
    	$rectx2 = 415
    	$recty = 25
    	$win = true
    elsif $h[2] == "BLUE" and $h[4] == "BLUE" and $h[6] == "BLUE"
    	while $loopNum <=400
    		draw_quad($rectx2-size2, $recty-size2, 0xff0000ff, $rectx2+size2, $recty-size2, 0xff0000ff, $rectx2-size2, $recty+size2, 0xff0000ff, $rectx2+size2, $recty+size2, 0xff0000ff, 0)
    		$loopNum += 1
    		$rectx2 -= 1
    		$recty += 1
    	end 
    	$loopNum = 0
    	$rectx2 = 415
    	$recty = 25
    	$win2 = true
    end
    if $h[0] == "RED"
     @font2.draw($t[0], 35, -30, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[0], 35, -30, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
    if $h[1] == "RED"
     @font2.draw($t[1], 190, -30, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[1], 190, -30, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
    if $h[2] == "RED"
     @font2.draw($t[2], 345, -30, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[2], 345, -30, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
    if $h[3] == "RED"
     @font2.draw($t[3], 35, 120, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[3], 35, 120, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
    if $h[4] == "RED"
     @font2.draw($t[4], 190, 120, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[4], 190, 120, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
    if $h[5] == "RED"
     @font2.draw($t[5], 345, 120, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[5], 345, 120, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
    if $h[6] == "RED"
     @font2.draw($t[6], 35, 275, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[6], 35, 275, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
    if $h[7] == "RED"
     @font2.draw($t[7], 190, 275, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[7], 190, 275, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
    if $h[8] == "RED"
     @font2.draw($t[8], 345, 275, 12, 1.0, 1.0, Gosu::Color::RED)
    else
     @font2.draw($t[8], 345, 275, 12, 1.0, 1.0, Gosu::Color::BLUE)
    end
end
    if $win == true
    	draw_quad(320-320, 240-240, 0xff000000, 320+320, 240-240, 0xff000000, 320-320, 240+240, 0xff000000, 320+320, 240+240, 0xff000000, 0)
    $o = "x"
    $t = ["", "", "", "", "", "", "", "", ""]
    $p = [1, 0]
    $c = true
    $h = ["", "", "", "", "", "", "", "", ""]
    	@font2.draw("Player 1", 0, 0, 12, 1.0, 1.0, Gosu::Color::WHITE)
      @font2.draw("WINS!", 0, 120, 12, 1.0, 1.0, Gosu::Color::GREEN)
      @font.draw("try again?", 230, 320, 12, 1.0, 1.0, Gosu::Color::WHITE)
    end
  end
end

Tictactoe.new.show