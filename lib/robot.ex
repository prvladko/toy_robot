defmodule ToyRobot.Robot do
  alias ToyRobot.Robot
  defstruct [north: 0, east: 0, facing: :north]

  @doc """
  Moves the robot forward one cpace in the direction it is facing.

  ## Examples

      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %Robot{north: 0, facing: :north}
      %Robot{north: 0, facing: :north}
      iex> robot |> Robot.move
      %Robot{north: 1}
  """
#  def move(%__MODULE__{} = robot), do: robot |> move_north # %__MODULE__{} == %ToyRobot.Robot{}
#  def move(%Robot{facing: :north} = robot), do: robot |> move_north
#  def move(%Robot{facing: :east} = robot), do: robot |> move_east
#  def move(%Robot{facing: :south} = robot), do: robot |> move_south
#  def move(%Robot{facing: :west} = robot), do: robot |> move_west
  def move(%Robot{facing: facing} = robot) do
    case facing do
      :north -> robot |> move_north
      :east -> robot |> move_east
      :south -> robot |> move_south
      :west -> robot |> move_west
    end
  end

  @doc """
  Moves the robot east one space.

  ## Examples

      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %Robot{east: 0}
      %Robot{east: 0}
      iex> robot |> Robot.move_east
      %Robot{east: 1}
      iex> robot |> Robot.move_east |> Robot.move_east |> Robot.move_east
      %Robot{east: 3}
  """
  def move_east(robot) do
    %Robot{east: robot.east + 1}
  end

  @doc """
  Moves the robot west one space.

  ## Examples

      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %Robot{east: 0}
      %Robot{east: 0}
      iex> robot |> Robot.move_west
      %Robot{east: -1}
      iex> robot |> Robot.move_west |> Robot.move_west |> Robot.move_west
      %Robot{east: -3}
  """
  def move_west(robot) do
    %Robot{east: robot.east - 1}
  end

  @doc """
  Moves the robot north one space.

  ## Examples

      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %Robot{north: 0}
      %Robot{north: 0}
      iex> robot |> Robot.move_north
      %Robot{north: 1}
      iex> robot |> Robot.move_north |> Robot.move_north |> Robot.move_north
      %Robot{north: 3}
  """
  def move_north(robot) do
    %Robot{north: robot.north + 1}
  end

  @doc """
  Moves the robot south one space.

  ## Examples

      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %Robot{north: 0}
      %Robot{north: 0}
      iex> robot |> Robot.move_south
      %Robot{north: -1}
      iex> robot |> Robot.move_south |> Robot.move_south |> Robot.move_south
      %Robot{north: -3}
  """
  def move_south(robot) do
    %Robot{north: robot.north - 1}
  end

end
