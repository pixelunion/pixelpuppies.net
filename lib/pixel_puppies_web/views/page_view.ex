defmodule PixelPuppiesWeb.PageView do
  use PixelPuppiesWeb, :view

  @public_path "/images/pets/"
  @pets_directory "priv/static/images/pets"
  @file_ext [".jpg", "jpeg", ".png", "gif"]

  def all_pet_files do
    @pets_directory
    |> File.ls!()
    |> Enum.filter(&String.ends_with?(&1, @file_ext))
  end

  def pet_files_web_path(pic), do: @public_path <> pic
end
