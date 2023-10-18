# Stable diffusion flow of latent space using Perlin noise algorithm

An algorithm to explore the Stable Diffusion latent space with Perlin Noise. It's a variation of commonly called *latent space walk* which traverse the manifold. The experiment applies geometrical transformation of prompt latent space and diffusion noise space.

## **Why Perlin noise?**
Perlin noise is a pseudo random gradient noise developed by Ken Perlin in 1983 but still relevant in many applications. It's famous for procedural textures and terrain generation in early era of VFX. Furthermore it can be used to produce natural movement of wind, waves, grass etc. The reason to expermient is to apply smooth yet randomized transition between prompts and latent space by testing various approaches. I decided to check what happens if such procedural noise flows through Stable Diffusion. It's important that Perlin noise generates smooth noise across 1,2 or 3 dimensions.

## **Area of exploration**

### **Prompt encoder latent manifold**
It's the encoding directly fed into image generator. This stage is used for prompt interpolation where two encodings exist in same latent manifold.

By default its dimensions are 77 tokens, 768-dimensional vector each.


### **Diffusion noise space**
It's the noise fed into latent space at each diffusion step. If we keep the same noise seed we can generate same image over time but in our next experiment we want to intentionally transform it in a predictable way.

Dimension is 1/8 of image size. For 512 it's 64. (64, 64, 4)

### The model itself?
*Need further investigation of feasibility.*

## **Experiment consists of:**

### **Analysis of proof of concept**
Before starting anything it's crucial to understand the problem and possible outcomes. Analysis tries to gather as much insights as possible. Some of them will be discarded based on results.

### **Interpolation**
1.   Interpolation between two prompts with uniform Perlin Noise.

2.   Interpolation between two prompts where 2D noise flows through encoding latent space.

### **Spatial noise flow over prompt encoder manifold.**
Behaviour of Stable Diffusion when we let the noise flow through the encoded prompt. There are various approaches presented. Please refer to analysis steps. This experiment doesn't interpolate so it's an unconstrained flow.

### **Spatial noise flow over the diffusion noise space.**
Behaviour of Stable Diffusion when we let the noise flow through the diffusion noise space, or when it's mostly made from it.
