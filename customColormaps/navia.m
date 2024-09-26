function c = navia()

persistent cmap
if isempty(cmap)
	cmap = [...
		0.01342                  0.075817                  0.152989
		0.015121                  0.080634                   0.15996
		0.016255                  0.085228                  0.167073
		0.016803                  0.089716                  0.174205
		0.016961                   0.09399                  0.181411
		0.017336                  0.098133                  0.188743
		0.017703                  0.102263                  0.196117
		0.018058                  0.106514                  0.203551
		0.018404                  0.110739                  0.211044
		0.018742                  0.114975                  0.218604
		0.019071                  0.119327                   0.22623
		0.019395                  0.123667                  0.233875
		0.019714                  0.128112                  0.241609
		0.020031                  0.132548                  0.249362
		0.020346                   0.13702                  0.257176
		0.020663                  0.141543                  0.265003
		0.020984                   0.14608                  0.272884
		 0.02131                  0.150645                  0.280769
		0.021644                   0.15525                  0.288708
		 0.02199                  0.159855                  0.296649
		0.022349                   0.16455                   0.30459
		0.022726                  0.169252                  0.312535
		0.023123                  0.173933                  0.320514
		0.023543                  0.178678                  0.328453
		0.023992                  0.183406                  0.336383
		0.024471                  0.188212                  0.344302
		0.024987                   0.19298                  0.352204
		0.025542                  0.197784                  0.360075
		0.026143                  0.202606                  0.367909
		0.026794                  0.207462                  0.375703
		0.027501                  0.212323                  0.383455
		 0.02827                  0.217191                  0.391145
		0.029108                  0.222061                  0.398763
		 0.03002                  0.226972                  0.406327
		0.031016                  0.231888                  0.413802
		0.032099                   0.23681                  0.421189
		0.033282                  0.241728                  0.428497
		0.034665                  0.246655                  0.435701
		0.036177                   0.25162                  0.442789
		0.037711                  0.256558                  0.449756
		0.039376                  0.261524                  0.456594
		 0.04119                  0.266493                  0.463294
		0.042961                  0.271453                   0.46987
		0.045066                  0.276447                  0.476271
		0.047153                  0.281406                  0.482514
		0.049396                  0.286374                  0.488587
		0.051602                  0.291371                  0.494481
		0.053996                  0.296335                  0.500174
		 0.05657                   0.30129                  0.505677
		0.059155                  0.306271                  0.510984
		0.061738                  0.311207                  0.516069
		0.064526                  0.316148                  0.520947
		0.067354                  0.321058                  0.525594
		0.070218                   0.32594                  0.530009
		0.073219                  0.330814                  0.534182
		0.076127                   0.33567                  0.538131
		0.079162                  0.340477                  0.541813
		 0.08231                  0.345245                  0.545267
		0.085333                  0.349976                  0.548472
		 0.08849                  0.354659                  0.551417
		0.091644                   0.35927                  0.554118
		0.094766                  0.363832                  0.556572
		0.097864                  0.368336                  0.558778
		0.100919                  0.372752                  0.560753
		0.104007                  0.377108                  0.562497
		0.107081                  0.381374                  0.564002
		0.110099                  0.385537                  0.565273
		0.113065                  0.389625                  0.566351
		0.115972                  0.393615                  0.567218
		0.118845                   0.39751                  0.567882
		0.121615                  0.401307                  0.568363
		0.124403                  0.404991                  0.568671
		0.127118                  0.408585                  0.568816
		 0.12984                  0.412081                  0.568808
		0.132441                   0.41547                  0.568659
		0.135022                  0.418767                   0.56838
		0.137551                   0.42197                  0.567982
		0.139985                  0.425101                  0.567475
		0.142452                  0.428133                  0.566866
		 0.14487                  0.431091                   0.56616
		 0.14722                  0.433959                  0.565369
		0.149576                  0.436782                  0.564516
		0.151851                  0.439525                  0.563597
		0.154137                   0.44222                  0.562611
		0.156434                  0.444849                  0.561566
		0.158673                  0.447417                  0.560478
		0.160888                  0.449959                  0.559346
		0.163114                  0.452457                  0.558172
		0.165274                  0.454907                  0.556983
		0.167499                  0.457313                  0.555739
		0.169695                    0.4597                  0.554492
		0.171844                  0.462052                  0.553207
		0.174021                  0.464387                   0.55192
		 0.17616                  0.466681                  0.550603
		0.178369                   0.46896                  0.549279
		0.180492                  0.471215                   0.54794
		0.182644                   0.47344                  0.546595
		0.184823                  0.475673                  0.545236
		0.186971                  0.477869                  0.543872
		0.189125                  0.480063                  0.542508
		 0.19127                  0.482238                   0.54113
		 0.19344                  0.484393                  0.539754
		0.195587                  0.486551                  0.538389
		 0.19775                  0.488697					0.53701
		0.199899                  0.490844                  0.535616
		0.202078                  0.492957                  0.534235
		0.204288                  0.495093                  0.532857
		0.206475                  0.497214                  0.531468
		0.208638                  0.499326                  0.530082
		0.210837                  0.501454                  0.528697
		 0.21303                  0.503562                  0.527302
		0.215251                  0.505676                  0.525907
		0.217492                  0.507811                  0.524508
		0.219733                  0.509929                  0.523111
		0.221968                  0.512056                  0.521697
		0.224223                    0.5142                  0.520288
		0.226532                   0.51633                  0.518887
		0.228826                  0.518491                  0.517467
		0.231132                  0.520642                  0.516028
		0.233434                  0.522815                  0.514608
		0.235808                  0.524993                  0.513165
		0.238158                   0.52719                  0.511714
		0.240527                  0.529397                   0.51026
		0.242938                  0.531613                  0.508803
		0.245362                  0.533842                  0.507323
		0.247837                  0.536101                  0.505829
		0.250281                   0.53838                   0.50435
		0.252797                  0.540662                  0.502829
		0.255325                  0.542974                   0.50132
		0.257852                  0.545302                  0.499775
		0.260437                  0.547651                  0.498247
		0.263045                  0.550026                  0.496671
		0.265674                  0.552426                  0.495106
		0.268327                  0.554845                  0.493511
		0.271026                  0.557299                  0.491915
		 0.27375                  0.559769                  0.490291
		0.276504                  0.562275                  0.488653
		0.279291                  0.564792                     0.487
		0.282108                  0.567358                  0.485321
		 0.28494                  0.569938                  0.483632
		 0.28783                  0.572565                  0.481933
		0.290758                   0.57521                  0.480205
		0.293713                  0.577887                  0.478456
		0.296725                  0.580608                  0.476693
		0.299755                  0.583353                  0.474918
		0.302814                  0.586141                    0.4731
		0.305952                  0.588949                   0.47129
		0.309104                  0.591813                  0.469452
		0.312267                  0.594697                  0.467584
		0.315523                  0.597624                  0.465694
		0.318795                  0.600585                  0.463804
		0.322118                  0.603591                  0.461886
		0.325473                  0.606628                  0.459945
		0.328904                  0.609705                  0.457993
		0.332367                  0.612819                  0.456024
		0.335866                  0.615981                  0.454041
		0.339437                  0.619188                  0.452047
		0.343048                  0.622419                  0.450027
		0.346709                  0.625704                  0.447996
		0.350441                  0.629031                   0.44596
		0.354216                  0.632401                   0.44393
		0.358071                  0.635814                  0.441885
		0.361985                  0.639273                  0.439829
		0.365969                  0.642778                  0.437786
		0.370017                  0.646328                  0.435739
		0.374165                   0.64993                  0.433689
		0.378375                  0.653574                  0.431684
		0.382682                  0.657277                   0.42967
		0.387076                  0.661018                  0.427695
		0.391586                  0.664815                  0.425736
		0.396188                  0.668672                  0.423819
		0.400915                  0.672578                  0.421948
		0.405747                  0.676534                  0.420141
		 0.41071                  0.680539                  0.418384
		  0.4158                  0.684609                  0.416716
		0.421036                  0.688741                  0.415117
		 0.42643                  0.692921                  0.413622
		0.431996                  0.697151                  0.412238
		0.437712                  0.701442                  0.410969
		0.443601                  0.705794                  0.409842
		0.449678                  0.710198                  0.408859
		0.455945                  0.714651                   0.40805
		0.462409                  0.719165                  0.407425
		0.469094                  0.723723                  0.407003
		0.475974                  0.728332                  0.406801
		0.483066                   0.73299                  0.406834
		 0.49039                  0.737682                  0.407121
		0.497935                  0.742421                   0.40768
		0.505675                  0.747187                  0.408529
		0.513668                  0.751981                  0.409686
		0.521853                  0.756797                  0.411156
		0.530269                  0.761628                  0.412971
		0.538886                  0.766471                  0.415116
		0.547692                  0.771318                  0.417631
		 0.55669                  0.776152                  0.420499
		0.565854                  0.780975                  0.423745
		0.575184                  0.785778                  0.427379
		0.584655                  0.790546                  0.431376
		0.594246                  0.795277                  0.435745
		0.603948                  0.799967                  0.440475
		0.613718                  0.804596                  0.445574
		0.623571                  0.809166                  0.451034
		0.633452                   0.81366                  0.456821
		0.643349                  0.818084                   0.46293
		0.653247                  0.822434                  0.469371
		0.663131                  0.826693                  0.476077
		0.672961                  0.830863                  0.483052
		0.682722                  0.834941					0.490287
		0.692413                  0.838924                  0.497751
		0.701988                  0.842817                  0.505395
		0.711468                  0.846607                  0.513248
		0.720806                  0.850311                  0.521252
		0.730018                  0.853916                  0.529404
		0.739078                  0.857435                   0.53767
		0.747979                  0.860865                  0.546036
		0.756716                  0.864214                   0.55448
		0.765293                  0.867473                  0.562995
		 0.77369                  0.870656                  0.571548
		0.781928                   0.87377                  0.580146
		0.789985                  0.876809                  0.588748
		0.797871                  0.879788                  0.597375
		0.805587                  0.882702                   0.60598
		0.813135                  0.885563                  0.614576
		0.820517                  0.888367                  0.623153
		0.827735                  0.891117                  0.631684
		0.834795                  0.893822                  0.640175
		0.841696                  0.896485                  0.648607
		0.848439                  0.899102                  0.656986
		0.855036                  0.901678                  0.665289
		 0.86148                  0.904216                  0.673526
		0.867785                  0.906721                  0.681675
		0.873943                  0.909184                  0.689751
		0.879964                  0.911616                  0.697724
		0.885854                  0.914016                  0.705609
		0.891606                  0.916374                  0.713389
		0.897231                  0.918701                  0.721062
		0.902724                  0.920996                  0.728629
		0.908093                  0.923262                   0.73608
		0.913337                  0.925486                  0.743425
		0.918458                  0.927676                  0.750645
		0.923468                  0.929837                  0.757743
		0.928353                  0.931959                  0.764721
		 0.93313                  0.934048                  0.771578
		0.937802                  0.936108                  0.778308
		0.942365                  0.938126                  0.784921
		0.946819                  0.940114                  0.791406
		0.951178                  0.942064                  0.797775
		0.955439                  0.943981                   0.80403
		0.959606                  0.945864                  0.810165
		0.963686                   0.94772                  0.816201
		 0.96769                  0.949541                  0.822128
		0.971611                  0.951338                  0.827953
		0.975464                  0.953108                    0.8337
		0.979259                  0.954852                  0.839361
		0.982996                  0.956574                  0.844951
		0.986688                  0.958281                  0.850479];
end
c = cmap;


% Harcopy of the matplotlib license in case the website quoted above changes:
% License

%Matplotlib only uses BSD compatible code, and its license is based on the PSF license. 
%See the Open Source Initiative licenses page for details on individual licenses. 
%Non-BSD compatible licenses (eg LGPL) are acceptable in matplotlib toolkits. 
%For a discussion of the motivations behind the licencing choice, see Licenses.
%Copyright Policy
%
%John Hunter began matplotlib around 2003. Since shortly before his passing in 2012, 
%Michael Droettboom has been the lead maintainer of matplotlib, but, as has 
%always been the case, matplotlib is the work of many.
%
%Prior to July of 2013, and the 1.3.0 release, the copyright of the source code 
%was held by John Hunter. As of July 2013, and the 1.3.0 release, matplotlib 
%has moved to a shared copyright model.
%
%matplotlib uses a shared copyright model. Each contributor maintains copyright 
%over their contributions to matplotlib. But, it is important to note that 
%these contributions are typically only changes to the repositories. Thus, 
%the matplotlib source code, in its entirety, is not the copyright of any 
%single person or institution. Instead, it is the collective copyright of 
%the entire matplotlib Development Team. If individual contributors want 
%to maintain a record of what changes/contributions they have specific 
%copyright on, they should indicate their copyright in the commit message 
%of the change, when they commit the change to one of the matplotlib repositories.
%
%The Matplotlib Development Team is the set of all contributors to the 
%matplotlib project. A full list can be obtained from the git version 
%control logs.
%License agreement for matplotlib 1.4.0
%
%1. This LICENSE AGREEMENT is between the Matplotlib Development Team (“MDT”), 
%and the Individual or Organization (“Licensee”) accessing and otherwise 
%using matplotlib software in source or binary form and its associated documentation.
%
%2. Subject to the terms and conditions of this License Agreement, MDT hereby 
%grants Licensee a nonexclusive, royalty-free, world-wide license to reproduce, 
%analyze, test, perform and/or display publicly, prepare derivative works, 
%distribute, and otherwise use matplotlib 1.4.0 alone or in any derivative version, 
%provided, however, that MDT’s License Agreement and MDT’s notice of copyright, 
%i.e., “Copyright (c) 2012-2013 Matplotlib Development Team; All Rights Reserved” 
%are retained in matplotlib 1.4.0 alone or in any derivative version prepared by Licensee.
%
%3. In the event Licensee prepares a derivative work that is based on or incorporates 
%matplotlib 1.4.0 or any part thereof, and wants to make the derivative work available 
%to others as provided herein, then Licensee hereby agrees to include in any such work 
%a brief summary of the changes made to matplotlib 1.4.0.
%
%4. MDT is making matplotlib 1.4.0 available to Licensee on an “AS IS” basis. 
%MDT MAKES NO REPRESENTATIONS OR WARRANTIES, EXPRESS OR IMPLIED. BY WAY OF EXAMPLE, 
%BUT NOT LIMITATION, MDT MAKES NO AND DISCLAIMS ANY REPRESENTATION OR WARRANTY OF 
%MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE OR THAT THE USE OF 
%MATPLOTLIB 1.4.0 WILL NOT INFRINGE ANY THIRD PARTY RIGHTS.
%
%5. MDT SHALL NOT BE LIABLE TO LICENSEE OR ANY OTHER USERS OF MATPLOTLIB 1.4.0 FOR 
%ANY INCIDENTAL, SPECIAL, OR CONSEQUENTIAL DAMAGES OR LOSS AS A RESULT OF MODIFYING, 
%DISTRIBUTING, OR OTHERWISE USING MATPLOTLIB 1.4.0, OR ANY DERIVATIVE THEREOF, 
%EVEN IF ADVISED OF THE POSSIBILITY THEREOF.
%
%6. This License Agreement will automatically terminate upon a material breach of 
%its terms and conditions.
%
%7. Nothing in this License Agreement shall be deemed to create any relationship 
%of agency, partnership, or joint venture between MDT and Licensee. This 
%License Agreement does not grant permission to use MDT trademarks or trade name 
%in a trademark sense to endorse or promote products or services of Licensee, 
%or any third party.
%
%8. By copying, installing or otherwise using matplotlib 1.4.0, Licensee agrees 
%to be bound by the terms and conditions of this License Agreement.
