# Equivariant denoiser for image restoration
This repository contains associated with the paper [Equivariant denoiser for image restoration](https://arxiv.org/abs/2412.05343).

The goal is to add random transformations to the image before applying the denoiser. It allows to add $\pi$-equivariance on the underlying prior.

We apply these ideas for deblurring, inpainting, single image super-resolution and despeckling. We also provide a comparison of the denoising performances of the original denoiser and its equivariant versions.

![Example equivariant restoration](figures/Examples_restorations.png)
*Figure 1 – Deblurring (a motion blur kernel with input noise level $\sigma_{y} = 5 / 255$) and despeckling (number of looks $50$) with RED and ERED with a GS-denoiser trained on natural images or SAR images (respectively). The set of transformations for ERED is \textit{random flip}.  ERED produces a better qualitative result than RED.*

## Environment definition

Our code that is based on Pytorch libraries, you need to create a conda environment with our libraries version

```
conda env create -f environment.yml
```

## Link to Download the Denoiser weights
To run the algorithm it is needed to download the denoiser weights and put them in the "GS_denoising/ckpts" folder.

- For the original DRUNet weights trained on color images proposed in [DPIR](https://ieeexplore.ieee.org/document/9454311) follow this [link](https://huggingface.co/deepinv/drunet/resolve/main/drunet_color.pth?download=true).
- For the GS DRUNet weights trained on color images proposed in [Gradient step denoiser for convergent plug-and-play](https://arxiv.org/pdf/2110.03220) follow this [link](https://huggingface.co/deepinv/gradientstep/blob/main/GSDRUNet.ckpt).
- For the GS DRUNet weights trained on SAR gray images follow this [link](https://plmbox.math.cnrs.fr/seafhttp/f/b431fa2ed3514c4fa6cf/?op=view).


## Datasets
The test images are provided in the folder "datasets". The CBSD68 images (and the subsets CBSD10, set4c, set1c) came from the [Berkeley Segmentation Dataset and Benchmark](https://www2.eecs.berkeley.edu/Research/Projects/CS/vision/bsds/). The SAR images came from the dataset provided by [Emanuele Dalsasso](https://gitlab.telecom-paris.fr/ring/SAR2SAR/-/raw/master/network_weights/SAR2SAR-test.zip).

## Run experiments
Exemples of commands to run the experiments are provided in the "PnP_restoration/experiments.sh" file.

## Acknowledgments 
This repository contains part of code from :
- [Gradient Step Plu-and-Play](https://github.com/samuro95/GSPnP)
- [SNORE](https://github.com/Marien-RENAUD/SNORE)

For the denoiser definition, we use tools for the library :
- [DeepInv](https://deepinv.github.io/deepinv/)

## Citation
If you use this code, consider cite
```
@inproceedings{renaud2025equivariant,
  title={Equivariant denoisers for image restoration},
  author={Renaud, Marien and Leclaire, Arthur and Papadakis, Nicolas},
  booktitle={International Conference on Scale Space and Variational Methods in Computer Vision},
  pages={227--240},
  year={2025},
  organization={Springer}
}
```