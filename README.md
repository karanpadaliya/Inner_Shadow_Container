<h1>InnerShadowContainer 🪞</h1>

<p><strong>InnerShadowContainer</strong> is a highly customizable <strong>Flutter widget</strong> that adds beautiful and soft <strong>inner shadows</strong> to any container, ideal for <strong>neumorphic UI</strong> and modern <strong>soft design</strong> styles. Perfect for developers building elegant UIs in Flutter using subtle depth effects.</p>

<p>Use it to bring <strong>neumorphism</strong>, <strong>container shadows</strong>, and <strong>soft UI designs</strong> to life in your app with zero dependencies.</p>

<hr>

<h2>✨ Features</h2>
<ul>
  <li>✅ Inner shadow on any side: top-left, top-right, bottom-right, bottom-left</li>
  <li>✅ Fully customizable blur, offset, radius, and shadow color</li>
  <li>✅ Lightweight, dependency-free and pure Flutter implementation</li>
  <li>✅ Supports circular, rounded, or rectangular containers</li>
  <li>✅ Perfect for <strong>neumorphic</strong> and <strong>soft UI</strong> designs</li>
</ul>

<hr>

<h2>🚀 Installation</h2>
<p>Add this to your <code>pubspec.yaml</code> file:</p>

<pre><code>dependencies:
  inner_shadow_container: ^1.0.3
</code></pre>

<p>Then run:</p>
<pre><code>flutter pub get</code></pre>

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
    <tr><td><code>height</code></td><td><code>double?</code></td><td><code>null</code></td><td>Height of the container</td></tr>
    <tr><td><code>width</code></td><td><code>double?</code></td><td><code>null</code></td><td>Width of the container</td></tr>
    <tr><td><code>borderRadius</code></td><td><code>double</code></td><td><code>12.0</code></td><td>Border radius of the container</td></tr>
    <tr><td><code>backgroundColor</code></td><td><code>Color</code></td><td><code>Colors.white</code></td><td>Background color of the container</td></tr>
    <tr><td><code>isShadowTopLeft</code></td><td><code>bool</code></td><td><code>false</code></td><td>Apply inner shadow on top-left side</td></tr>
    <tr><td><code>isShadowTopRight</code></td><td><code>bool</code></td><td><code>false</code></td><td>Apply inner shadow on top-right side</td></tr>
    <tr><td><code>isShadowBottomRight</code></td><td><code>bool</code></td><td><code>false</code></td><td>Apply inner shadow on bottom-right side</td></tr>
    <tr><td><code>isShadowBottomLeft</code></td><td><code>bool</code></td><td><code>false</code></td><td>Apply inner shadow on bottom-left side</td></tr>
    <tr><td><code>child</code></td><td><code>Widget?</code></td><td><code>null</code></td><td>Optional child inside the container</td></tr>
    <tr><td><code>alignment</code></td><td><code>Alignment</code></td><td><code>Alignment.center</code></td><td>Child alignment</td></tr>
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

<h2>💡 Pro Tip</h2>

<p>You can combine multiple shadows for enhanced depth:</p>

<pre><code class="language-dart">isShadowTopLeft: true,
isShadowTopRight: true,
isShadowBottomLeft: true,
isShadowBottomRight: true,
</code></pre>

<p>This gives a full immersive <strong>neumorphic feel</strong> to your containers.</p>

<hr>

<h2>📄 License</h2>
<p>Licensed under the MIT License © 2025 <a href="https://www.linkedin.com/in/karan-padaliya-73aaa81b4/">Karan Padaliya</a></p>

<hr>

<p>Made with ❤️ in Flutter — Powered by creativity and clean UI!</p>