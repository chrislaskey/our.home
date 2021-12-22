defmodule OurHomeWeb.IconHelpers do
  use Phoenix.HTML

  import Phoenix.LiveView.Helpers

  @default_class "h-6 w-6 flex-shrink-0 text-gray-400"

  @doc """
  Render an SVG Hero Icons

      <%= icon(:star) %>

  ## Options

  Icons are styled by default. To override default values, pass a keyword list as a second argument:

      <%= icon(:star, class: "text-blue-300 h-8 w-8 flex-shrink-0") %>

  """
  def icon(type, assigns \\ [])

  def icon(type, options) when is_list(options) do
    assigns = %{
      class: Keyword.get(options, :class, @default_class)
    }

    icon(type, assigns)
  end

  # Icons

  def icon(:adjustments, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4" />
    </svg>
    """
  end

  def icon(:arrow_circle_down_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13l-3 3m0 0l-3-3m3 3V8m0 13a9 9 0 110-18 9 9 0 010 18z" />
    </svg>
    """
  end

  def icon(:arrow_circle_left_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 15l-3-3m0 0l3-3m-3 3h8M3 12a9 9 0 1118 0 9 9 0 01-18 0z" />
    </svg>
    """
  end

  def icon(:arrow_circle_right_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:arrow_circle_up_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 11l3-3m0 0l3 3m-3-3v8m0-13a9 9 0 110 18 9 9 0 010-18z" />
    </svg>
    """
  end

  def icon(:arrow_narrow_right_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
    </svg>
    """
  end

  def icon(:ban, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M13.477 14.89A6 6 0 015.11 6.524l8.367 8.368zm1.414-1.414L6.524 5.11a6 6 0 018.367 8.367zM18 10a8 8 0 11-16 0 8 8 0 0116 0z" clip-rule="evenodd" />
    </svg>
    """
  end

  # Alias for `ban`, circle with a strike through it
  def icon(:cancel, assigns), do: icon(:ban, assigns)

  def icon(:ban_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636" />
    </svg>
    """
  end

  # Alias for `ban_outline`, circle with a strike through it
  def icon(:cancel_outline, assigns), do: icon(:ban_outline, assigns)

  def icon(:beaker_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z" />
    </svg>
    """
  end

  def icon(:calendar_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
    </svg>
    """
  end

  def icon(:check, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:check_circle_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:chevron_down, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:chevron_left, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:chevron_right, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:cursor_click_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122" />
    </svg>
    """
  end

  def icon(:document_duplicate_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7v8a2 2 0 002 2h6M8 7V5a2 2 0 012-2h4.586a1 1 0 01.707.293l4.414 4.414a1 1 0 01.293.707V15a2 2 0 01-2 2h-2M8 7H6a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2v-2" />
    </svg>
    """
  end

  # Alias for `document_duplicate_outline`, two documents
  def icon(:documents, assigns), do: icon(:document_duplicate_outline, assigns)

  def icon(:exclamation_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
    </svg>
    """
  end

  def icon(:exclamation_circle, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:exclamation_circle_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:external_link_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
    </svg>
    """
  end

  def icon(:eye_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
    </svg>
    """
  end

  def icon(:eye_off_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21" />
    </svg>
    """
  end

  def icon(:feather, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="currentColor" viewBox="0 0 24 24" stroke="none">
      <path d="M20.42542,3.57458c-1.33606-1.336-5.06885.07092-8.4256,2.22516C11.66187,6.01666,10.32751,11.77,10,12c-.34186.24005.32373-5.04266-.00043-4.79285A22.27271,22.27271,0,0,0,7.86505,9.0639c-1.68878,1.68872-2.442,4.81183-1.35254,6.88879C5.501,17.07782,4.47968,18.253,3.42383,19.52a.7499.7499,0,1,0,1.15234.96A92.509,92.509,0,0,1,17.60724,7.41437a.714.714,0,0,1-.077.11591A134.14936,134.14936,0,0,0,8.6001,17.72394a6.58,6.58,0,0,0,6.336-1.589,22.27507,22.27507,0,0,0,1.85736-2.13538C17.20959,13.45959,15,13,15,13s3.55664-1.56073,3.81335-2.00043C20.6051,7.931,21.62976,4.779,20.42542,3.57458Z"/>
    </svg>
    """
  end

  def icon(:feather_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path d="M20.42542,3.57458c-1.33606-1.336-5.06885.07092-8.4256,2.22516C11.66187,6.01666,10.32751,11.77,10,12c-.34186.24005.32373-5.04266-.00043-4.79285A22.27271,22.27271,0,0,0,7.86505,9.0639c-1.68878,1.68872-2.442,4.81183-1.35254,6.88879C5.501,17.07782,4.47968,18.253,3.42383,19.52a.7499.7499,0,1,0,1.15234.96A92.509,92.509,0,0,1,17.60724,7.41437a.714.714,0,0,1-.077.11591A134.14936,134.14936,0,0,0,8.6001,17.72394a6.58,6.58,0,0,0,6.336-1.589,22.27507,22.27507,0,0,0,1.85736-2.13538C17.20959,13.45959,15,13,15,13s3.55664-1.56073,3.81335-2.00043C20.6051,7.931,21.62976,4.779,20.42542,3.57458Z"/>
    </svg>
    """
  end

  def icon(:heart_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
    </svg>
    """
  end

  def icon(:home, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z" />
    </svg>
    """
  end

  def icon(:home_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
    </svg>
    """
  end

  def icon(:information_circle_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:lock_closed_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
    </svg>
    """
  end

  def icon(:lock_open_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 11V7a4 4 0 118 0m-4 8v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2z" />
    </svg>
    """
  end

  def icon(:mail_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
    </svg>
    """
  end

  def icon(:menu_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
    </svg>
    """
  end

  def icon(:pause_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 9v6m4-6v6m7-3a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:picture_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} style="enable-background:new 0 0 50 50;" version="1.1" viewBox="0 0 50 50" xml:space="preserve" xmlns:xlink="http://www.w3.org/1999/xlink">
      <g id="Layer_1">
        <path d="M43,39h6V4H8v6H1v36h42V39z M10,6h37v31h-4V10H10V6z M8,12h33v7.586l-4-4l-17,17l-10-10l-7,7V12H8z M41,44H3V32.414l7-7   l10,10l17-17l4,4V39V44z"/>
        <path d="M20,25c2.757,0,5-2.243,5-5s-2.243-5-5-5s-5,2.243-5,5S17.243,25,20,25z M20,17c1.654,0,3,1.346,3,3s-1.346,3-3,3   s-3-1.346-3-3S18.346,17,20,17z"/>
      </g>
      <g/>
    </svg>
    """
  end

  def icon(:pencil, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M13.586 3.586a2 2 0 112.828 2.828l-.793.793-2.828-2.828.793-.793zM11.379 5.793L3 14.172V17h2.828l8.38-8.379-2.83-2.828z" />
    </svg>
    """
  end

  def icon(:play, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM9.555 7.168A1 1 0 008 8v4a1 1 0 001.555.832l3-2a1 1 0 000-1.664l-3-2z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:play_alt, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="currentColor" stroke="none" style="enable-background:new 0 0 32 32;" version="1.1" viewBox="0 0 32 32" xml:space="preserve">
      <path d="M28.516,14L6,2.75C5.344,2.453,4.672,2,4,2C2.922,2,2,2.906,2,4v24c0,1.094,0.922,2,2,2c0.672,0,1.344-0.453,2-0.75  L28.516,18C29.063,17.734,30,17.188,30,16S29.063,14.266,28.516,14z M6,24.778V7.222L23.568,16L6,24.778z"/>
    </svg>
    """
  end

  def icon(:play_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14.752 11.168l-3.197-2.132A1 1 0 0010 9.87v4.263a1 1 0 001.555.832l3.197-2.132a1 1 0 000-1.664z" />
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:plus, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:shield_exclamation_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 24 24" stroke="currentColor" fill="none">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.618 5.984A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016zM12 9v2m0 4h.01" />
    </svg>
    """
  end

  def icon(:slash, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 16 20" fill="currentColor">
      <path d="M5.697 4.34L8.98 16.532h1.327L7.025 4.341H5.697z" />
    </svg>
    """
  end

  def icon(:sparkles_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 3v4M3 5h4M6 17v4m-2-2h4m5-16l2.286 6.857L21 12l-5.714 2.143L13 21l-2.286-6.857L5 12l5.714-2.143L13 3z" />
    </svg>
    """
  end

  def icon(:star, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
    </svg>
    """
  end

  def icon(:status_online, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M5.05 3.636a1 1 0 010 1.414 7 7 0 000 9.9 1 1 0 11-1.414 1.414 9 9 0 010-12.728 1 1 0 011.414 0zm9.9 0a1 1 0 011.414 0 9 9 0 010 12.728 1 1 0 11-1.414-1.414 7 7 0 000-9.9 1 1 0 010-1.414zM7.879 6.464a1 1 0 010 1.414 3 3 0 000 4.243 1 1 0 11-1.415 1.414 5 5 0 010-7.07 1 1 0 011.415 0zm4.242 0a1 1 0 011.415 0 5 5 0 010 7.072 1 1 0 01-1.415-1.415 3 3 0 000-4.242 1 1 0 010-1.415zM10 9a1 1 0 011 1v.01a1 1 0 11-2 0V10a1 1 0 011-1z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:switch_vertical, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 20 20" stroke="currentColor">
      <path d="M5 12a1 1 0 102 0V6.414l1.293 1.293a1 1 0 001.414-1.414l-3-3a1 1 0 00-1.414 0l-3 3a1 1 0 001.414 1.414L5 6.414V12zM15 8a1 1 0 10-2 0v5.586l-1.293-1.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 00-1.414-1.414L15 13.586V8z" />
    </svg>
    """
  end

  # Alias for `switch_vertical`, one arrow up and one arrow down
  def icon(:sort_alt, assigns), do: icon(:switch_vertical_outline, assigns)

  def icon(:switch_vertical_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16V4m0 0L3 8m4-4l4 4m6 0v12m0 0l4-4m-4 4l-4-4" />
    </svg>
    """
  end

  # Alias for `switch_vertical_outline`, one arrow up and one arrow down
  def icon(:sort_alt_outline, assigns), do: icon(:switch_vertical_outline, assigns)

  def icon(:tag_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z" />
    </svg>
    """
  end

  def icon(:trash, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:trash_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
    </svg>
    """
  end

  def icon(:user_group, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z" />
    </svg>
    """
  end

  def icon(:user_circle, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-6-3a2 2 0 11-4 0 2 2 0 014 0zm-2 4a5 5 0 00-4.546 2.916A5.986 5.986 0 0010 16a5.986 5.986 0 004.546-2.084A5 5 0 0010 11z" clip-rule="evenodd" />
    </svg>
    """
  end

  def icon(:user_circle_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:user_group_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
    </svg>
    """
  end

  def icon(:users_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
    </svg>
    """
  end

  def icon(:video_camera_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z" />
    </svg>
    """
  end

  def icon(:view_bullet_list, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 32 32" fill="currentColor">
      <path d=" M3 8 A3 3 0 0 0 9 8 A3 3 0 0 0 3 8 M12 6 L28 6 L28 10 L12 10z M3 16 A3 3 0 0 0 9 16 A3 3 0 0 0 3 16 M12 14 L28 14 L28 18 L12 18z M3 24 A3 3 0 0 0 9 24 A3 3 0 0 0 3 24 M12 22 L28 22 L28 26 L12 26z "/>
    </svg>
    """
  end

  def icon(:view_grid, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} viewBox="0 0 20 20" fill="currentColor">
      <path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
    </svg>
    """
  end

  def icon(:view_grid_small, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} style="enable-background:new 0 0 16 16; margin-top: 1px;" version="1.1" viewBox="0 0 16 16" xml:space="preserve" fill="currentColor">
      <path d="M3,0H1C0.45,0,0,0.45,0,1v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V1C4,0.45,3.55,0,3,0z M9,0H7C6.45,0,6,0.45,6,1v2  c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V1C10,0.45,9.55,0,9,0z M15,0h-2c-0.55,0-1,0.45-1,1v2c0,0.55,0.45,1,1,1h2  c0.55,0,1-0.45,1-1V1C16,0.45,15.55,0,15,0z M3,6H1C0.45,6,0,6.45,0,7v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V7C4,6.45,3.55,6,3,6  z M9,6H7C6.45,6,6,6.45,6,7v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V7C10,6.45,9.55,6,9,6z M15,6h-2c-0.55,0-1,0.45-1,1v2  c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1V7C16,6.45,15.55,6,15,6z M3,12H1c-0.55,0-1,0.45-1,1v2c0,0.55,0.45,1,1,1h2  c0.55,0,1-0.45,1-1v-2C4,12.45,3.55,12,3,12z M9,12H7c-0.55,0-1,0.45-1,1v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1v-2  C10,12.45,9.55,12,9,12z M15,12h-2c-0.55,0-1,0.45-1,1v2c0,0.55,0.45,1,1,1h2c0.55,0,1-0.45,1-1v-2C16,12.45,15.55,12,15,12z"/>
    </svg>
    """
  end

  def icon(:world_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3.055 11H5a2 2 0 012 2v1a2 2 0 002 2 2 2 0 012 2v2.945M8 3.935V5.5A2.5 2.5 0 0010.5 8h.5a2 2 0 012 2 2 2 0 104 0 2 2 0 012-2h1.064M15 20.488V18a2 2 0 012-2h3.064M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end

  def icon(:x_outline, assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class={assigns.class} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
    </svg>
    """
  end
end
