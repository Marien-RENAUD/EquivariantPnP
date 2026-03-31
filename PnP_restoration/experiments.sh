for j in 0.55 0.6 
do
    for i in 0.0157 0.0196 0.0235
    do 
        python inpaint.py --dataset_name "set4c" --std_end $i --lamb $j --gpu_number 1 --opt_alg "SNORE_Prox" --noise_level_img 5. --no_early_stopping --no_backtracking
    done
done

# python inpaint.py --dataset_name "CBSD10" --extract_images --extract_curves --stepsize 0.1 --std_end 0.0314 --lamb_end 0.05 --gpu_number 1 --opt_alg "SNORE_Prox" --noise_level_img 5. --inpainting_init --no_early_stopping --no_backtracking

# python inpaint.py --dataset_name "CBSD10" --extract_images --extract_curves --stepsize 0.05 --std_end 0.0314 --lamb_end 0.05 --gpu_number 1 --opt_alg "SNORE_Prox" --noise_level_img 5. --inpainting_init --no_early_stopping --no_backtracking


# python inpaint.py --dataset_name "set4c" --extract_images --extract_curves --std_end 0.0392 --lamb 0.19 --gpu_number 0 --opt_alg "RED" --noise_level_img 5. --no_early_stopping --no_backtracking

# for i in 4 5 6 7 8 9
# do 
#     python deblur.py --dataset_name "CBSD10" --gpu_number 1 --opt_alg "SNORE" --noise_level_img 5. --kernel_indexes $i
# done


# python deblur.py --dataset_name "CBSD10" --gpu_number 1 --opt_alg "SNORE" --noise_level_img 5. --lamb_0 0.5 --lamb_end 0.5 --std_0 0.02 --std_end 0.02 --maxitr 1000

# for k in 4
#     do
#     for j in 7 8 9
#     do
#         for i in 0.06 0.08 0.1 0.12
#         do 
#             python deblur.py --dataset_name "set4c" --kernel_indexes $k --gpu_number 1 --denoiser_type "DRUNet" --transformation "flip" --opt_alg "ERED" --stepsize 2.0 --noise_level_img 5. --lamb $i --no_backtracking --no_early_stopping --sigma_denoiser $j 
#         done
#     done
# done



# for i in 6 7 8 9
# do 
#     for j in 60 80 100
#     do
#         python despeckle.py --L 10 --dataset_name "setSAR4" --opt_alg "ERED" --transformation "flip" --gpu_number 1 --lamb $j --sigma_denoiser $i --stepsize 0.01 --maxitr 100 --no_backtracking --no_early_stopping
#     done
# done








# # For inpainting with RED_Prox
# python inpaint.py --dataset_name "CBSD10" --opt_alg "RED_Prox" --extract_images --extract_curves

# # For deblurring with DiffPIR
# python DiffPIR.py --dataset_name "CBSD10" --degradation "deblurring"