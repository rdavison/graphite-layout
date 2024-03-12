# Graphite Keyboard Layout

## Introduction

Graphite is a highly optimized, well balanced, general purpose keyboard layout designed to accommodate the real world needs of typists looking for a great “out-of-the-box” experience. Its design incorporates many contemporary theories about layouts to find a balance between comfort and speed. In addition to its impressive performance in metrics, Graphite has also been extensively tested and validated through real-world usage. 

## The Layout

<img width="977" alt="Screenshot 2023-04-04 at 8 56 41 PM" src="https://user-images.githubusercontent.com/630055/229977002-af109956-c56b-406f-9f07-6e9937412ece.png">

### Finger Map

<img width="982" alt="Screenshot 2023-04-09 at 1 54 08 AM" src="https://user-images.githubusercontent.com/630055/230756923-cbe4adab-22e5-468e-b0ca-068d4a2a7e67.png">


(color indicates expected fingering)

### Ascii Version

```
~ ! @ # $ %  ^ & * ( ) { }
  B L D W Z  _ F O U J : + |
  N R T S G  Y H A E I ?
  Q X M C V  K P > " <

` 1 2 3 4 5  6 7 8 9 0 [ ]
  b l d w z  ' f o u j ; = \
  n r t s g  y h a e i ,
  q x m c v  k p . - /
```

### Design Goals

Graphite was generated through an algorithm which automated the process of analyzing and comparing a multitude of layouts. The layout was generated using Oxey’s layout analyzer, which is very aptly named [Oxeylyzer](https://github.com/O-X-E-Y/oxeylyzer).

I was most interested in finding a layout with the following properties:
- High alternation
- High rolls
- Balanced heatmap
- Low finger speed
- Low scissors
- Low lateral stretches
- Low redirects

(NOTE: For information on those terms, I highly recommend reading through [the layout doc](https://docs.google.com/document/d/1_a5Nzbkwyk1o0bvTctZrtgsee9jSP-6I0q3A0_9Mzm0/edit).)

In its default configuration, Oxeylyzer generates the [Sturdy](https://o-x-e-y.github.io/layouts/sturdy/index.html) layout. While the Sturdy layout is quite good, I had a few nitpicks I wanted to address. So, I forked the repo and tweaked the source code to try to filter out a few bigrams I felt were problematic, and after several attempts I found the precursor to Graphite. I was quite surprised by how good the layout felt to my fingers in general, but I wasn’t sure how it would work in practice. Prior to this, I had created other keyboard layouts, and learned a handful of others’ layouts as well, all of which I abandoned in favor of [MTGAP](https://mathematicalmulticore.wordpress.com/the-keyboard-layout-project/) for one reason or another. I decided to learn the layout myself first (i.e. eating my own dog food) in order to work out any issues before promoting it.

The layout was generated using an English corpus which did an excellent job in finding a suitable placement for all the letters and the basic layer of punctuation. I spent the next few months learning the layout and experimenting with a handful of swaps in order to see whether Oxeylyzer’s decisions were justified. In the end, I concluded that I was _not_ smarter than Oxeylyzer, and ended up reverting nearly all my swaps. However, there was a class of swaps that I knew I could do better.

### Punctuation

Despite being a great analyzer, Oxeylyzer does has a couple of limitations:
- it does not consider punctuation layers,
- it does not consider the impact of modifier keys such as `shift`, which are quite common pinky keys on standard keyboards.

An example to motivate this problem concerns the placement of the punctuation keys. The precursor to Graphite had `’` and `”` on the same finger (on index), and `.` under middle finger. In the beginning, this configuration did not cause any problems. However, when I got to around 70wpm, I started to notice that `.”` was a pretty common bigram, particularly for writers/authors/journalists (okay, let’s be honest, I was practicing on typelit.io). Since Oxeylyzer doesn’t consider shift layers, it never found that `.”` was a pretty bad bigram. So, I tried to fix this by moving `.` to pinky, since `I` and `J` almost _never_ come at the end of words.

However, after a few days of retraining, I started to realize that `.` on pinky was _also_ problematic, particularly for me as a programmer. I personally like to press `shift` on the opposite hand for ergonomic reasons, but what I found was that `.` (unlike `,`) is frequently in close proximity with capitalized letters. In normal prose they tend to be separated by a space, but in programming I was discovering that capital letters aren’t always followed by a space. For example, I found myself typing things like `Belt.List.Set.fromArray` over and over, and the transition from `.` to `right shift` was really causing my right pinky (which already suffers from RSI) a lot of discomfort. Since Oxeylyzer doesn’t consider the impact of modifiers like `shift`, it never found that `.` should probably not go on a pinky key (unless you do something non-standard, like remap `shift` to a thumb key).

So, I begrudgingly moved `.` _back_ to middle finger. Around this time, I was chatting with ec0vid on Discord, and just trying to get some ideas, and he had a great suggestion to separate `’` and `”`. Since the problem was that `.”` was more common than `.’`, I could fix the bigram scissor by moving `”` closer to `.`. So, I swapped `”` and `_`, which _completely_ solved the problem.

In addition to those punctuation swaps, I also made a few more more swaps to the punctuation which I think greatly improve the experience for programmers. In programming, I found that I often had to type the following bigrams:
- `->`
- `=>`
- `|>`
- `./`
- `:=`
- `):` (for example: `def foo():`)

Putting `>` on middle finger makes all those arrow symbols quite comfortable to type. Flipping `<` and `>` may be bit strange at first, but if you are touch typing (which you should be doing anyways!), eventually your muscle memory will kick in, and you won’t even think about it.

When modifying the punctuation, I did, however, impose some constraints on myself to try to avoid some technical limitations. Previously, I had experienced problems when learning a version of MTGAP with fully optimized punctuation. In particular, the problems I encountered had to do with keyboard shortcuts. For example, in the fully optimized MTGAP, the `{` key was under the number `3`. The shortcut I had long ago learned to switch tabs on Firefox was `Cmd + {`, but since `{` was under `3`, I typed `Cmd + Shift + 3` and to my surprise ended up taking a screenshot instead of moving tabs (on MacOS `Cmd + Shift + 3` takes screenshots). This was not the only case, and it quickly turned into a game of whack-a-mole trying to fix all my keyboard shortcuts. Since I wanted a great out-of-the-box experience for people learning Graphite, I decided to limit moving the punctuation as much as possible. In particular, I avoided changing the layer each symbol was on; if the punctuation symbol requires `shift` in qwerty, then it requires `shift` in Graphite. I think this greatly helps reduce confusion, and potential for conflicts.

While the punctuation may seem a bit wacky at first, I hope I’ve provided some well thought out justification for my choices. The punctuation changes help improve the typing experience for both writers and programmers. I do recognize that not all programmers and writers will have the same needs, so I do think that perhaps there is some wiggle room here. For me, however, these changes to Graphite have greatly improved how I feel about the layout, to the extent that I feel that Graphite provides one of the most comfortable typing experiences without having to go down a rabbit hole of redefining all your application shortcuts, or depend on non-standard ergonomic keyboards (for things like extra thumb keys).

### Design Features of Graphite

#### Promoting a more natural typing posture

Graphite encourages a more natural typing posture by placing letters in a way that kind of force the hands to be at an angle. Typing with your hands at a slight angle has a couple of benefits:

- It reduces ulnar deviation. This happens when your wrists are twisted outwards and tension is applied to the side of the wrist closest to your pinky finger.
- On the right hand, a slight angle arguably makes it easier to reach backspace. 
- For vim users, it makes `jk` easier to press as well.

##### Heatmap

<img width="414" alt="Screenshot 2023-04-05 at 1 17 31 AM" src="https://user-images.githubusercontent.com/630055/229987518-ea4ed50b-a10a-4d59-8243-eecab5788528.png">

#### On Alternation, Rolls, and Redirects

High alternation frequency is good for comfort and balance, while high roll frequency is also good for comfort and speed. With Graphite you get both. While I don't want to explain too much about this topic here, ([the layout doc](https://docs.google.com/document/d/1_a5Nzbkwyk1o0bvTctZrtgsee9jSP-6I0q3A0_9Mzm0/edit) covers a lot of this in much greater detail), I do want to point out some observations, namely:

- The letter H is somewhat unique in English in that it exhibits the strong tendency to come _after_ consonants and _before_ vowels. 
- The letter N exhibits the opposite property, in that it’s much more likely to appear _before_ a consonant, and _after_ a vowel.

With this in mind, you can look at where N and H are on Graphite and get as sense for how the layout works. Consonant hand pinky N promotes inward rolls, and vowel hand index H promotes outward rolls. You may get the sense that everything moves in a left->right direction on Graphite. While it's true that rolls tend to move left->right, in practice I find that the asymmetry actually doesn’t cause as much grief as I thought it would. 

The reason is that there is truly a huge variety of letter patterns in English, and the left->right tendency ends up being nothing more than a tendency. It does not overwhelmingly dominate the feel of the layout. Furthermore, at higher speeds, I find that what really starts to stand out more is the “interleaved” rolls. These are the rolls that you’re effectively setting up while you’re in the process of performing an alternation. 

For a motivating example, consider the word `with` in Graphite. It can be divided into a left hand `w_t_` and right hand `_i_h`. Here, you’ll notice that in effect, each hand is _individually_ performing right->left rolls. While I currently don’t have any metrics on these kinds of “interleaved” rolls, in my experience, they really do tend to balance out the left->right tendency of normal rolls.

Furthermore, the left->right tendency does have an additional benefit which is that it helps to reduce redirects. In fact, Graphite falls into a class of keyboard layouts occasionally described as _ultralow redirect_ layouts.

Lastly, I want to add one more interesting observation about Graphite, which is the placement of the letter `S`. I have to say, `S` on index is _very_ nice.  While `S` is generally a very flexible letter, it does have a pretty strong tendency to come at the end of words (see [English Letter Frequency Counts: Mayzner Revisited](https://www.norvig.com/mayzner.html) for more on this). Because of this, a lot of words will end as inward rolls on a strong finger. (Though, I should also point out that `N` is also a common ending letter, but `S` still dominates in this regard over `N`). Also, to a _much_ lesser degree, `Y` also has a habit of appearing at the end of words, which is a nice benefit of having `Y` on index.

### On Scissors

A big component of layout design involves the reduction of excessive “bad” stretches. Oxeylyzer includes some heuristics to reduce a class of bad stretches which are nebulously described as "scissors". Scissors are loosely defined as row changes which don't follow the natural curvature of the fingers. For example, on Qwerty, `CR` is considered a scissor because it's a row skip in which you curl your middle finger and stretch your index finger. However, things aren't so clear cut because Qwerty `EX` is also very uncomfortable to type, even though it _does_ follow the natural curvature of the fingers; and Qwerty `MP` is comfortable to type _despite_ going against the natural curvature of the fingers. If anyone knows of some good ways to classify these bigrams more rigorously, feel free to suggest it in the [Alternative Keyboard Layouts discord server](https://discord.gg/zxnVKnJZ)!

### Shortcomings and Mitigations

No layout is perfect, and that includes Graphite. There are a few bad finger patterns that you should look out for.

#### BR / PH / MB

I've grouped these three bigrams together because they all kind of affect each other. In an ideal world, `B` would replace `P` on the right hand in order to eliminate the `PH` sfb (and subsequent `PHY` trigram, for all you _physicists_ out there). However, if you put `P` on pinky, then you end up in a worse scenario because _both_ `PR/RP` and `MP` are _more_ common than `BR/RB` and `MB`. This is the reason why I wouldn't recommend moving those letters around on Graphite.

Some mitigations which I would recommend:
- `BR`: There isn't much you can do here. If you find it too difficult to roll `BR`, you can always insert a tiny pause after `B` to give your ring finger time to set up the `R` keypress.
- `MB`: On a standard row-stagger keyboard, you can press `M` with left index whenever you see `MB`.
- `PH`: If `PH` is really bad, you might be able to get away with swapping `P` and `K`:
  - If you swap `PK` then `PH` can be done with index-middle (and `PHY` with index-middle-index), but `P` will be further away from the vowels. This is probably ok on a row stagger keyboard because the bottom row is staggered to the right anyways, so swapping `P` will probably not have a major impact. On ortholinear or column-stagger keyboards, this may be more of a problem. (NOTE: Swapping `PK` does also help with `PY` for all the happy Python programmers out there).
  - I don't really recommend swapping `PF` to try to get a `PH` slide because it breaks apart `OF/FO` which is much more common.
  
Example hard words with these bigrams:
- `brown`, `embryo` (extremely rare `mbr` trigram), `tumblr`
- `physics`, `hyphen`

#### SC / SW / GS

In almost all cases, these can be easily mitigated with alternate fingerings.
- `SC`: middle-index (`school`, `script`, `discord`, `electronics`)
- `SW`: index-middle (`switch`, `sword`, `aws`)
- `GS`: index-middle (`things`, `sings`, `brings`)

#### RM

On row-stagger keyboards, this bigram can often be alted with `M` on index. However, sometimes, it is followed by `S`, and in those cases, you'll have to decide to either tank through the `MS` sfb, or deal with an awkward `RMS` trigram.

Examples:
- `army`, `murmur`, `farmer`, `farms`, `arms`

## Layout Stats

### Amini
```
graphite (stronglytyped) (3 likes)
  b l d w z  ' f o u j ; =
  n r t s g  y h a e i ,  
  q x m c v  k p . - /    

MONKEYRACER:
  Alt: 31.94%
  Rol: 43.00%   (In/Out: 19.67% | 23.33%)
  One:  2.37%   (In/Out:  0.48% |  1.89%)
  Red:  2.26%   (Bad:     0.22%)

  SFB: 0.92%
  SFS: 4.83%

  LH/RH: 46.56% | 53.44%
```

### Oxeylyzer
```
graphite
b l d w z  ' f o u j
n r t s g  y h a e i
q x m c v  k p . - ,
Sfb:  0.996%
Dsfb: 6.260%
Finger Speed: 5.687
    [0.284, 0.504, 0.754, 1.155, 0.870, 0.782, 0.965, 0.374]
Scissors: 0.394%

Inrolls: 21.539%
Outrolls: 22.932%
Total Rolls: 44.471%
Onehands: 1.716%

Alternates: 34.338%
Alternates (sfs): 7.811%
Total Alternates: 42.149%

Redirects: 1.789%
Redirects Sfs: 0.796%
Bad Redirects: 0.264%
Bad Redirects Sfs: 0.133%
Total Redirects: 2.983%

Bad Sfbs: 0.507%
Sft: 0.025%

Score: 0.072
```

### Keyboard-Design
https://keyboard-design.com/letterlayout.html?layout=graphite.en.ansi

### A200
```
MONKEYTYPE-QUOTES.JSON
thumb: AVG

graphite
b l d w z '  f o u j ; =
n r t s g  y h a e i ,
q x m c v  k p . - /

Trigrams
========
Alternates - Total: 30.47%
     Rolls - Total: 47.56%   In: 21.79%   Out: 25.78%   Ratio:   0.89
  Onehands - Total:  4.40%   In:  1.81%   Out:  2.59%   Ratio:   0.89
 Redirects - Total:  6.23%
   Unknown - Total:  0.00%

  Same Finger
===========
       SFB - 1.04%         DSFB - 3.92%
       SFT - 0.01%          SFR - 6.37%

Finger Use
==========
      Left - Total: 37.76%   LP:  6.79%   LR:  7.63%   LM: 12.37%   LI: 10.96%
     Right - Total: 43.74%   RP:  6.90%   RR: 12.33%   RM: 13.77%   RI: 10.73%
     Thumb - Total: 18.50%

Row Use
=======
       Top - 25.69%         Home - 64.17%       Bottom - 10.15%
```

### Genkey
```
Graphite
b l d w z  ' f o u j ;
n r t s g  y h a e i ,
q x m c v  k p . - /
Rolls (l): 19.22%
        Inward: ~13.54%
        Outward: ~5.68%
Rolls (r): 25.15%
        Inward: ~8.08%
        Outward: ~17.07%
Alternates: ~42.24%
Onehands: ~1.72%
Redirects: ~3.05%
Finger Speed (weighted): [0.53 0.89 1.52 2.15 1.25 1.61 1.43 0.91]
Finger Speed (unweighted): [0.79 3.19 7.28 11.83 6.90 7.71 5.14 1.37]
Highest Speed (weighted): 2.15 (LI)
Highest Speed (unweighted): 11.83 (LI)
Index Usage: 14.5% 11.9%
SFBs: 0.834%
DSFBs: 5.950%
LSBs: 1.23%
Top SFBs:
        sc 0.138%       ue 0.129%       rl 0.077%       oa 0.075%
        ph 0.070%       gs 0.061%       ws 0.042%       hy 0.040%

Worst Bigrams:
        ue 17.029       oa 11.602       o. 10.973       lr 10.328
        dm 10.048       i, 9.852        sc 9.482        tm 7.609

Score: 32.85
```

### Keysolve
<img width="689" alt="Screenshot 2023-04-08 at 11 30 48 PM" src="https://user-images.githubusercontent.com/630055/230752664-c06e54ec-6dca-48ca-b841-0323b296b588.png">
<img width="683" alt="Screenshot 2023-04-08 at 11 30 56 PM" src="https://user-images.githubusercontent.com/630055/230752667-cbc0a9a6-b2a5-4ee3-bfad-7b72f725438a.png">

### Oxey's Layout Playground
<img width="1064" alt="Screenshot 2023-04-08 at 11 28 46 PM" src="https://user-images.githubusercontent.com/630055/230752613-cff7553b-9314-4e67-9c9d-7c6ed76b5172.png">

### Colemak DH Analyzer
<img width="633" alt="Screenshot 2023-04-08 at 11 33 14 PM" src="https://user-images.githubusercontent.com/630055/230752737-e326a489-f5c3-47cc-b27e-b880875233fa.png">

## Comparisons to Other Layouts

Coming soon...

## Layout Variations

Coming soon...

## Summary

Graphite good.

## About Me

I've been experimenting with keyboard layouts for a few years and have learned about one or two dozen layouts in my quest for an endgame layout. I switched to Dvorak in 2005 and used it for 15 years. During the COVID-19 pandemic lockdowns, I found myself suddenly afflicted by painful repetitive strain injury which affected the ring and pinky fingers of my right hand. Thinking it might be due to Dvorak's placement of `L` and `S`, I began experimenting with other layouts, and got sucked into the world of alternative keyboard layouts (turns out, the problem was _desk height_, not keyboard layout, which was greatly affecting my RSI). I have a YouTube channel where I've posted videos with handcams of me [typing](https://www.youtube.com/watch?v=aE5XWdoXak8) [in](https://www.youtube.com/watch?v=J7rmQt9Vnfw) [a](https://www.youtube.com/watch?v=H4CewMDqJPU) [variety](https://www.youtube.com/watch?v=mQ6iSYMMHv0) [of](https://www.youtube.com/watch?v=f62tBcBR1xQ) [layouts](https://www.youtube.com/watch?v=Msebf_zNaxY).
