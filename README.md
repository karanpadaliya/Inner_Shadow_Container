<h1>InnerShadowContainer 🪞</h1>

<p>A customizable Flutter widget that adds a subtle and flexible <strong>inner shadow</strong> effect to containers — perfect for neumorphism and modern UI design.</p>

<hr>

<h2>✨ Features</h2>
<ul>
  <li>🔹 Inner shadow from any direction</li>
  <li>🔹 Customizable blur, offset, radius, and color</li>
  <li>🔹 Lightweight and dependency-free</li>
  <li>🔹 Fully customizable and reusable widget</li>
  <li>🔹 Suitable for neumorphic-style UIs</li>
</ul>

<hr>

<h2>🚀 Installation</h2>

<p>Add the following to your <code>pubspec.yaml</code> file:</p>

<pre><code>dependencies:
  inner_shadow_container: ^1.0.0
</code></pre>

<p>Then run:</p>

<pre><code>flutter pub get
</code></pre>

<hr>

<h2>🔧 Usage</h2>

<pre><code class="language-dart">import 'package:inner_shadow_container/inner_shadow_container.dart';

InnerShadowContainer(
  height: 120,
  width: 120,
  backgroundColor: Colors.white,
  borderRadius: 20,
  isShadowTopLeft: true,
  isShadowBottomRight: true,
  child: Center(
    child: Icon(Icons.star, size: 40, color: Colors.orange),
  ),
);
</code></pre>

<hr>

<h2>📐 Parameters</h2>

<table border="1" cellspacing="0" cellpadding="8">
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Type</th>
      <th>Default</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>height</code></td>
      <td><code>double?</code></td>
      <td><code>null</code></td>
      <td>Height of the container</td>
    </tr>
    <tr>
      <td><code>width</code></td>
      <td><code>double?</code></td>
      <td><code>null</code></td>
      <td>Width of the container</td>
    </tr>
    <tr>
      <td><code>borderRadius</code></td>
      <td><code>double</code></td>
      <td><code>12.0</code></td>
      <td>Border radius of the container</td>
    </tr>
    <tr>
      <td><code>backgroundColor</code></td>
      <td><code>Color</code></td>
      <td><code>Colors.white</code></td>
      <td>Background color of the container</td>
    </tr>
    <tr>
      <td><code>isShadowTopLeft</code></td>
      <td><code>bool</code></td>
      <td><code>false</code></td>
      <td>Apply inner shadow on top-left side</td>
    </tr>
    <tr>
      <td><code>isShadowTopRight</code></td>
      <td><code>bool</code></td>
      <td><code>false</code></td>
      <td>Apply inner shadow on top-right side</td>
    </tr>
    <tr>
      <td><code>isShadowBottomRight</code></td>
      <td><code>bool</code></td>
      <td><code>false</code></td>
      <td>Apply inner shadow on bottom-right side</td>
    </tr>
    <tr>
      <td><code>isShadowBottomLeft</code></td>
      <td><code>bool</code></td>
      <td><code>false</code></td>
      <td>Apply inner shadow on bottom-left side</td>
    </tr>
    <tr>
      <td><code>child</code></td>
      <td><code>Widget?</code></td>
      <td><code>null</code></td>
      <td>Optional child widget inside the container</td>
    </tr>
    <tr>
      <td><code>alignment</code></td>
      <td><code>Alignment</code></td>
      <td><code>Alignment.center</code></td>
      <td>Alignment of the child inside the container</td>
    </tr>
  </tbody>
</table>

<hr>

<h2>🧪 Example App</h2>

<pre><code class="language-dart">InnerShadowContainer(
  height: 120,
  width: 120,
  backgroundColor: Colors.white,
  borderRadius: 20,
  isShadowTopLeft: true,
  isShadowBottomRight: true,
  child: Icon(Icons.favorite, color: Colors.red, size: 40),
);
</code></pre>

<hr>

<h2>💡 Tip</h2>

<p>You can combine multiple sides for richer depth:</p>

<pre><code class="language-dart">isShadowTopLeft: true,
isShadowBottomRight: true,
</code></pre>

<p>It works well with soft UI themes like neumorphism.</p>

<hr>

<h2>📄 License</h2>

<p>This project is licensed under the MIT License © 2025 <a href="https://github.com/yourgithub">Karan Padaliya</a></p>

<hr>

<h2>🙌 Contributions</h2>

<p>Pull requests are welcome! For major changes, please open an issue first to discuss what you'd like to change.</p>

<p>Made with ❤️ in Flutter.</p>
