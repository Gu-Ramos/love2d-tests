extern vec2 direction;
vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc)
{
  vec4 c = 1.000000 * texture2D(tex, tc);
  c += 1.975211 * (texture2D(tex, tc + 1.500000 * direction) + texture2D(tex, tc - 1.500000 * direction));
  return c * vec4(0.202003) * color;
}
