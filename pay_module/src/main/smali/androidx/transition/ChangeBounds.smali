.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroidx/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroidx/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 86
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 99
    new-instance v0, Landroidx/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 112
    new-instance v0, Landroidx/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 129
    new-instance v0, Landroidx/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 146
    new-instance v0, Landroidx/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 167
    new-instance v0, Landroidx/transition/RectEvaluator;

    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 173
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 175
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 176
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    const-string v3, "resizeClip"

    invoke-static {v1, v2, v3, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    .line 178
    .local v0, "resizeClip":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-virtual {p0, v0}, Landroidx/transition/ChangeBounds;->setResizeClip(Z)V

    .line 180
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 8
    .param p1, "values"    # Landroidx/transition/TransitionValues;

    .line 217
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 219
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 220
    :cond_1
    :goto_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 225
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 223
    :cond_2
    nop

    .line 228
    :goto_1
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 228
    :cond_3
    nop

    .line 232
    :goto_2
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .line 245
    const/4 v0, 0x1

    .line 246
    .local v0, "parentMatches":Z
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_3

    .line 247
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v2

    .line 248
    .local v2, "endValues":Landroidx/transition/TransitionValues;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 249
    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_2

    .line 251
    :cond_1
    iget-object v4, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    goto :goto_2

    .line 246
    .end local v2    # "endValues":Landroidx/transition/TransitionValues;
    :cond_3
    nop

    .line 254
    :goto_2
    return v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 242
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 236
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 237
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 38
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 261
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    if-eqz v9, :cond_1c

    if-nez v10, :cond_0

    move-object/from16 v15, p1

    move-object v12, v10

    const/4 v0, 0x0

    goto/16 :goto_16

    .line 264
    :cond_0
    iget-object v11, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 265
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v12, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 266
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "android:changeBounds:parent"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    .line 267
    .local v13, "startParent":Landroid/view/ViewGroup;
    const-string v1, "android:changeBounds:parent"

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/ViewGroup;

    .line 268
    .local v14, "endParent":Landroid/view/ViewGroup;
    if-eqz v13, :cond_1b

    if-nez v14, :cond_1

    move-object/from16 v15, p1

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v12, v10

    goto/16 :goto_15

    .line 271
    :cond_1
    iget-object v15, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 272
    .local v15, "view":Landroid/view/View;
    invoke-direct {v8, v13, v14}, Landroidx/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 273
    iget-object v1, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/graphics/Rect;

    .line 274
    .local v6, "startBounds":Landroid/graphics/Rect;
    iget-object v1, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/Rect;

    .line 275
    .local v5, "endBounds":Landroid/graphics/Rect;
    iget v4, v6, Landroid/graphics/Rect;->left:I

    .line 276
    .local v4, "startLeft":I
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 277
    .local v1, "endLeft":I
    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 278
    .local v3, "startTop":I
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 279
    .local v7, "endTop":I
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 280
    .local v2, "startRight":I
    move-object/from16 v18, v11

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v18, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v11, v5, Landroid/graphics/Rect;->right:I

    .line 281
    .local v11, "endRight":I
    move-object/from16 v19, v12

    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    .line 282
    .local v12, "startBottom":I
    move-object/from16 v20, v13

    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .local v20, "startParent":Landroid/view/ViewGroup;
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    .line 283
    .local v13, "endBottom":I
    move-object/from16 v21, v14

    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .local v21, "endParent":Landroid/view/ViewGroup;
    sub-int v14, v2, v4

    .line 284
    .local v14, "startWidth":I
    move-object/from16 v22, v6

    .end local v6    # "startBounds":Landroid/graphics/Rect;
    .local v22, "startBounds":Landroid/graphics/Rect;
    sub-int v6, v12, v3

    .line 285
    .local v6, "startHeight":I
    move-object/from16 v23, v5

    .end local v5    # "endBounds":Landroid/graphics/Rect;
    .local v23, "endBounds":Landroid/graphics/Rect;
    sub-int v5, v11, v1

    .line 286
    .local v5, "endWidth":I
    sub-int v0, v13, v7

    .line 287
    .local v0, "endHeight":I
    move-object/from16 v25, v15

    .end local v15    # "view":Landroid/view/View;
    .local v25, "view":Landroid/view/View;
    iget-object v15, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 288
    .local v9, "startClip":Landroid/graphics/Rect;
    iget-object v15, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:changeBounds:clip"

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 289
    .local v10, "endClip":Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 290
    .local v15, "numChanges":I
    if-eqz v14, :cond_3

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v5, :cond_8

    if-eqz v0, :cond_8

    goto :goto_0

    .line 291
    :goto_2
    if-ne v4, v1, :cond_5

    if-eq v3, v7, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 292
    :goto_4
    if-ne v2, v11, :cond_7

    if-eq v12, v13, :cond_6

    goto :goto_5

    :cond_6
    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 290
    :cond_8
    nop

    .line 294
    :goto_6
    if-eqz v9, :cond_a

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    goto :goto_9

    :cond_a
    :goto_8
    if-nez v9, :cond_b

    if-eqz v10, :cond_b

    goto :goto_7

    .line 296
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 294
    :cond_b
    nop

    .line 298
    :goto_a
    if-lez v15, :cond_17

    .line 300
    move-object/from16 v26, v9

    .end local v9    # "startClip":Landroid/graphics/Rect;
    .local v26, "startClip":Landroid/graphics/Rect;
    iget-boolean v9, v8, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    move-object/from16 v27, v10

    .end local v10    # "endClip":Landroid/graphics/Rect;
    .local v27, "endClip":Landroid/graphics/Rect;
    const/4 v10, 0x2

    if-nez v9, :cond_10

    .line 301
    move-object/from16 v9, v25

    .end local v25    # "view":Landroid/view/View;
    .local v9, "view":Landroid/view/View;
    invoke-static {v9, v4, v3, v2, v12}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 303
    if-ne v15, v10, :cond_d

    .line 304
    if-ne v14, v5, :cond_c

    if-ne v6, v0, :cond_c

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v10

    move/from16 v25, v15

    .end local v15    # "numChanges":I
    .local v25, "numChanges":I
    int-to-float v15, v4

    move/from16 v28, v0

    .end local v0    # "endHeight":I
    .local v28, "endHeight":I
    int-to-float v0, v3

    move/from16 v29, v6

    .end local v6    # "startHeight":I
    .local v29, "startHeight":I
    int-to-float v6, v1

    move/from16 v30, v5

    .end local v5    # "endWidth":I
    .local v30, "endWidth":I
    int-to-float v5, v7

    invoke-virtual {v10, v15, v0, v6, v5}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 307
    .local v0, "topLeftPath":Landroid/graphics/Path;
    sget-object v5, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v5, v0}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 309
    .local v0, "anim":Landroid/animation/Animator;
    move/from16 v32, v1

    move/from16 v31, v4

    move/from16 v16, v7

    move/from16 v37, v11

    move/from16 v33, v14

    move/from16 v17, v28

    move/from16 v36, v29

    move/from16 v34, v30

    const/4 v11, 0x1

    move/from16 v28, v2

    move/from16 v30, v3

    move/from16 v29, v12

    goto/16 :goto_11

    .line 304
    .end local v25    # "numChanges":I
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .local v0, "endHeight":I
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v15    # "numChanges":I
    :cond_c
    move/from16 v28, v0

    move/from16 v30, v5

    move/from16 v29, v6

    move/from16 v25, v15

    .line 310
    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v15    # "numChanges":I
    .restart local v25    # "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    new-instance v0, Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {v0, v9}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 311
    .local v0, "viewBounds":Landroidx/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v5

    int-to-float v6, v4

    int-to-float v15, v3

    int-to-float v10, v1

    move/from16 v31, v14

    .end local v14    # "startWidth":I
    .local v31, "startWidth":I
    int-to-float v14, v7

    invoke-virtual {v5, v6, v15, v10, v14}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    .line 313
    .local v5, "topLeftPath":Landroid/graphics/Path;
    sget-object v6, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 314
    invoke-static {v0, v6, v5}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 316
    .local v6, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v10

    int-to-float v14, v2

    int-to-float v15, v12

    move-object/from16 v32, v5

    .end local v5    # "topLeftPath":Landroid/graphics/Path;
    .local v32, "topLeftPath":Landroid/graphics/Path;
    int-to-float v5, v11

    move-object/from16 v33, v9

    .end local v9    # "view":Landroid/view/View;
    .local v33, "view":Landroid/view/View;
    int-to-float v9, v13

    invoke-virtual {v10, v14, v15, v5, v9}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    .line 318
    .local v5, "bottomRightPath":Landroid/graphics/Path;
    sget-object v9, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {v0, v9, v5}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 320
    .local v9, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 321
    .local v10, "set":Landroid/animation/AnimatorSet;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 322
    move-object v14, v10

    .line 323
    .local v14, "anim":Landroid/animation/Animator;
    new-instance v15, Landroidx/transition/ChangeBounds$7;

    invoke-direct {v15, v8, v0}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v10, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    .end local v0    # "viewBounds":Landroidx/transition/ChangeBounds$ViewBounds;
    .end local v5    # "bottomRightPath":Landroid/graphics/Path;
    .end local v6    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v9    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v10    # "set":Landroid/animation/AnimatorSet;
    .end local v32    # "topLeftPath":Landroid/graphics/Path;
    move/from16 v32, v1

    move/from16 v16, v7

    move/from16 v37, v11

    move-object v0, v14

    move/from16 v17, v28

    move/from16 v36, v29

    move/from16 v34, v30

    move-object/from16 v9, v33

    const/4 v11, 0x1

    move/from16 v28, v2

    move/from16 v30, v3

    move/from16 v29, v12

    move/from16 v33, v31

    move/from16 v31, v4

    goto/16 :goto_11

    .line 330
    .end local v25    # "numChanges":I
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .end local v31    # "startWidth":I
    .end local v33    # "view":Landroid/view/View;
    .local v0, "endHeight":I
    .local v5, "endWidth":I
    .local v6, "startHeight":I
    .local v9, "view":Landroid/view/View;
    .local v14, "startWidth":I
    .restart local v15    # "numChanges":I
    :cond_d
    move/from16 v28, v0

    move/from16 v30, v5

    move/from16 v29, v6

    move-object/from16 v33, v9

    move/from16 v31, v14

    move/from16 v25, v15

    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v9    # "view":Landroid/view/View;
    .end local v14    # "startWidth":I
    .end local v15    # "numChanges":I
    .restart local v25    # "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    .restart local v31    # "startWidth":I
    .restart local v33    # "view":Landroid/view/View;
    if-ne v4, v1, :cond_f

    if-eq v3, v7, :cond_e

    move-object/from16 v9, v33

    goto :goto_b

    .line 336
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v0

    int-to-float v5, v2

    int-to-float v6, v12

    int-to-float v9, v11

    int-to-float v10, v13

    invoke-virtual {v0, v5, v6, v9, v10}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 338
    .local v0, "bottomRight":Landroid/graphics/Path;
    sget-object v5, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v9, v33

    .end local v33    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    invoke-static {v9, v5, v0}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 340
    .local v0, "anim":Landroid/animation/Animator;
    move/from16 v32, v1

    move/from16 v16, v7

    move/from16 v37, v11

    move/from16 v17, v28

    move/from16 v36, v29

    move/from16 v34, v30

    move/from16 v33, v31

    const/4 v11, 0x1

    move/from16 v28, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v29, v12

    goto/16 :goto_11

    .line 330
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v9    # "view":Landroid/view/View;
    .restart local v33    # "view":Landroid/view/View;
    :cond_f
    move-object/from16 v9, v33

    .line 331
    .end local v33    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v0

    int-to-float v5, v4

    int-to-float v6, v3

    int-to-float v10, v1

    int-to-float v14, v7

    invoke-virtual {v0, v5, v6, v10, v14}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 333
    .local v0, "topLeftPath":Landroid/graphics/Path;
    sget-object v5, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v5, v0}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 335
    .local v0, "anim":Landroid/animation/Animator;
    move/from16 v32, v1

    move/from16 v16, v7

    move/from16 v37, v11

    move/from16 v17, v28

    move/from16 v36, v29

    move/from16 v34, v30

    move/from16 v33, v31

    const/4 v11, 0x1

    move/from16 v28, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v29, v12

    goto/16 :goto_11

    .line 342
    .end local v9    # "view":Landroid/view/View;
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .end local v31    # "startWidth":I
    .local v0, "endHeight":I
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v14    # "startWidth":I
    .restart local v15    # "numChanges":I
    .local v25, "view":Landroid/view/View;
    :cond_10
    move/from16 v28, v0

    move/from16 v30, v5

    move/from16 v29, v6

    move/from16 v31, v14

    move-object/from16 v9, v25

    move/from16 v25, v15

    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v14    # "startWidth":I
    .end local v15    # "numChanges":I
    .restart local v9    # "view":Landroid/view/View;
    .local v25, "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    .restart local v31    # "startWidth":I
    move/from16 v10, v31

    .end local v30    # "endWidth":I
    .end local v31    # "startWidth":I
    .restart local v5    # "endWidth":I
    .local v10, "startWidth":I
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 343
    .local v14, "maxWidth":I
    nop

    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .restart local v0    # "endHeight":I
    .restart local v6    # "startHeight":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 345
    .local v15, "maxHeight":I
    move/from16 v28, v2

    .end local v2    # "startRight":I
    .local v28, "startRight":I
    add-int v2, v4, v14

    move/from16 v29, v12

    .end local v12    # "startBottom":I
    .local v29, "startBottom":I
    add-int v12, v3, v15

    invoke-static {v9, v4, v3, v2, v12}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "positionAnimator":Landroid/animation/ObjectAnimator;
    if-ne v4, v1, :cond_12

    if-eq v3, v7, :cond_11

    goto :goto_c

    :cond_11
    move/from16 v33, v1

    move-object v12, v2

    move/from16 v32, v3

    move/from16 v31, v4

    goto :goto_d

    .line 350
    :cond_12
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v12

    move-object/from16 v30, v2

    .end local v2    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v30, "positionAnimator":Landroid/animation/ObjectAnimator;
    int-to-float v2, v4

    move/from16 v31, v4

    .end local v4    # "startLeft":I
    .local v31, "startLeft":I
    int-to-float v4, v3

    move/from16 v32, v3

    .end local v3    # "startTop":I
    .local v32, "startTop":I
    int-to-float v3, v1

    move/from16 v33, v1

    .end local v1    # "endLeft":I
    .local v33, "endLeft":I
    int-to-float v1, v7

    invoke-virtual {v12, v2, v4, v3, v1}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 352
    .local v1, "topLeftPath":Landroid/graphics/Path;
    sget-object v2, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v2, v1}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object v12, v2

    .line 355
    .end local v1    # "topLeftPath":Landroid/graphics/Path;
    .end local v30    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v12, "positionAnimator":Landroid/animation/ObjectAnimator;
    :goto_d
    move/from16 v30, v32

    .end local v32    # "startTop":I
    .local v30, "startTop":I
    move-object/from16 v3, v27

    .line 356
    .local v3, "finalClip":Landroid/graphics/Rect;
    if-nez v26, :cond_13

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v1

    goto :goto_e

    .line 356
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v4, v26

    .line 359
    .end local v26    # "startClip":Landroid/graphics/Rect;
    .local v4, "startClip":Landroid/graphics/Rect;
    :goto_e
    if-nez v27, :cond_14

    .line 360
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v1

    goto :goto_f

    .line 359
    :cond_14
    move-object/from16 v2, v27

    .line 362
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .local v2, "endClip":Landroid/graphics/Rect;
    :goto_f
    const/4 v1, 0x0

    .line 363
    .local v1, "clipAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_15

    .line 364
    invoke-static {v9, v4}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 365
    move/from16 v32, v0

    .end local v0    # "endHeight":I
    .local v32, "endHeight":I
    const-string v0, "clipBounds"

    move-object/from16 v26, v1

    .end local v1    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v26, "clipAnimator":Landroid/animation/ObjectAnimator;
    sget-object v1, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    move/from16 v34, v5

    const/4 v5, 0x2

    .end local v5    # "endWidth":I
    .local v34, "endWidth":I
    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v5, v17

    const/16 v16, 0x1

    aput-object v2, v5, v16

    invoke-static {v9, v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 367
    .end local v26    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v5, "clipAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroidx/transition/ChangeBounds$8;

    move/from16 v17, v32

    .end local v32    # "endHeight":I
    .local v17, "endHeight":I
    move-object v0, v1

    move/from16 v32, v33

    move/from16 v33, v10

    move-object v10, v1

    .end local v10    # "startWidth":I
    .local v32, "endLeft":I
    .local v33, "startWidth":I
    move-object/from16 v1, p0

    move-object/from16 v27, v2

    .end local v2    # "endClip":Landroid/graphics/Rect;
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    move-object v2, v9

    move-object/from16 v24, v4

    .end local v4    # "startClip":Landroid/graphics/Rect;
    .local v24, "startClip":Landroid/graphics/Rect;
    move/from16 v4, v32

    move/from16 v35, v14

    move-object v14, v5

    .end local v5    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v14, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v35, "maxWidth":I
    move v5, v7

    move/from16 v36, v6

    .end local v6    # "startHeight":I
    .local v36, "startHeight":I
    move v6, v11

    move/from16 v16, v7

    move/from16 v37, v11

    const/4 v11, 0x1

    .end local v7    # "endTop":I
    .end local v11    # "endRight":I
    .local v16, "endTop":I
    .local v37, "endRight":I
    move v7, v13

    invoke-direct/range {v0 .. v7}, Landroidx/transition/ChangeBounds$8;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v14, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_10

    .line 363
    .end local v16    # "endTop":I
    .end local v17    # "endHeight":I
    .end local v24    # "startClip":Landroid/graphics/Rect;
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .end local v32    # "endLeft":I
    .end local v34    # "endWidth":I
    .end local v35    # "maxWidth":I
    .end local v36    # "startHeight":I
    .end local v37    # "endRight":I
    .restart local v0    # "endHeight":I
    .restart local v1    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .restart local v2    # "endClip":Landroid/graphics/Rect;
    .restart local v4    # "startClip":Landroid/graphics/Rect;
    .local v5, "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v7    # "endTop":I
    .restart local v10    # "startWidth":I
    .restart local v11    # "endRight":I
    .local v14, "maxWidth":I
    .local v33, "endLeft":I
    :cond_15
    move/from16 v17, v0

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v24, v4

    move/from16 v34, v5

    move/from16 v36, v6

    move/from16 v16, v7

    move/from16 v37, v11

    move/from16 v35, v14

    move/from16 v32, v33

    const/4 v11, 0x1

    move/from16 v33, v10

    .end local v0    # "endHeight":I
    .end local v1    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "endClip":Landroid/graphics/Rect;
    .end local v4    # "startClip":Landroid/graphics/Rect;
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v7    # "endTop":I
    .end local v10    # "startWidth":I
    .end local v11    # "endRight":I
    .end local v14    # "maxWidth":I
    .restart local v16    # "endTop":I
    .restart local v17    # "endHeight":I
    .restart local v24    # "startClip":Landroid/graphics/Rect;
    .restart local v26    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    .restart local v32    # "endLeft":I
    .local v33, "startWidth":I
    .restart local v34    # "endWidth":I
    .restart local v35    # "maxWidth":I
    .restart local v36    # "startHeight":I
    .restart local v37    # "endRight":I
    move-object/from16 v14, v26

    .line 385
    .end local v26    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v14, "clipAnimator":Landroid/animation/ObjectAnimator;
    :goto_10
    invoke-static {v12, v14}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    move-object/from16 v26, v24

    .line 388
    .end local v3    # "finalClip":Landroid/graphics/Rect;
    .end local v12    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v14    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v15    # "maxHeight":I
    .end local v24    # "startClip":Landroid/graphics/Rect;
    .end local v35    # "maxWidth":I
    .local v0, "anim":Landroid/animation/Animator;
    .local v26, "startClip":Landroid/graphics/Rect;
    :goto_11
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_16

    .line 389
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 390
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-static {v1, v11}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 391
    new-instance v2, Landroidx/transition/ChangeBounds$9;

    invoke-direct {v2, v8, v1}, Landroidx/transition/ChangeBounds$9;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 418
    .local v2, "transitionListener":Landroidx/transition/Transition$TransitionListener;
    invoke-virtual {v8, v2}, Landroidx/transition/ChangeBounds;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto :goto_12

    .line 388
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "transitionListener":Landroidx/transition/Transition$TransitionListener;
    :cond_16
    nop

    .line 420
    :goto_12
    return-object v0

    .line 298
    .end local v16    # "endTop":I
    .end local v17    # "endHeight":I
    .end local v26    # "startClip":Landroid/graphics/Rect;
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .end local v28    # "startRight":I
    .end local v29    # "startBottom":I
    .end local v30    # "startTop":I
    .end local v31    # "startLeft":I
    .end local v32    # "endLeft":I
    .end local v33    # "startWidth":I
    .end local v34    # "endWidth":I
    .end local v36    # "startHeight":I
    .end local v37    # "endRight":I
    .local v0, "endHeight":I
    .local v1, "endLeft":I
    .local v2, "startRight":I
    .local v3, "startTop":I
    .local v4, "startLeft":I
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v7    # "endTop":I
    .local v9, "startClip":Landroid/graphics/Rect;
    .local v10, "endClip":Landroid/graphics/Rect;
    .restart local v11    # "endRight":I
    .local v12, "startBottom":I
    .local v14, "startWidth":I
    .local v15, "numChanges":I
    .local v25, "view":Landroid/view/View;
    :cond_17
    move/from16 v17, v0

    move/from16 v32, v1

    move/from16 v28, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v34, v5

    move/from16 v36, v6

    move/from16 v16, v7

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move/from16 v37, v11

    move/from16 v29, v12

    move/from16 v33, v14

    move-object/from16 v9, v25

    move/from16 v25, v15

    .line 422
    .end local v0    # "endHeight":I
    .end local v1    # "endLeft":I
    .end local v2    # "startRight":I
    .end local v3    # "startTop":I
    .end local v4    # "startLeft":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v7    # "endTop":I
    .end local v10    # "endClip":Landroid/graphics/Rect;
    .end local v11    # "endRight":I
    .end local v12    # "startBottom":I
    .end local v13    # "endBottom":I
    .end local v14    # "startWidth":I
    .end local v15    # "numChanges":I
    .end local v22    # "startBounds":Landroid/graphics/Rect;
    .end local v23    # "endBounds":Landroid/graphics/Rect;
    .end local v25    # "view":Landroid/view/View;
    .local v9, "view":Landroid/view/View;
    move-object/from16 v6, p2

    move-object/from16 v12, p3

    goto :goto_13

    .line 423
    .end local v9    # "view":Landroid/view/View;
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Landroid/view/ViewGroup;
    .end local v21    # "endParent":Landroid/view/ViewGroup;
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Landroid/view/ViewGroup;
    .local v14, "endParent":Landroid/view/ViewGroup;
    .local v15, "view":Landroid/view/View;
    :cond_18
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v9, v15

    const/4 v11, 0x1

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .end local v15    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    .restart local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "startParent":Landroid/view/ViewGroup;
    .restart local v21    # "endParent":Landroid/view/ViewGroup;
    move-object/from16 v6, p2

    iget-object v0, v6, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 424
    .local v7, "startX":I
    iget-object v0, v6, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 425
    .local v10, "startY":I
    move-object/from16 v12, p3

    iget-object v0, v12, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 426
    .local v13, "endX":I
    iget-object v0, v12, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 428
    .local v14, "endY":I
    if-ne v7, v13, :cond_1a

    if-eq v10, v14, :cond_19

    goto :goto_14

    .line 455
    .end local v7    # "startX":I
    .end local v10    # "startY":I
    .end local v13    # "endX":I
    .end local v14    # "endY":I
    :cond_19
    :goto_13
    const/4 v0, 0x0

    return-object v0

    .line 428
    .restart local v7    # "startX":I
    .restart local v10    # "startY":I
    .restart local v13    # "endX":I
    .restart local v14    # "endY":I
    :cond_1a
    :goto_14
    nop

    .line 429
    iget-object v0, v8, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 430
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 432
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v0

    .line 433
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 434
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v0

    .line 436
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v9}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v16

    .line 437
    .local v16, "transitionAlpha":F
    const/4 v0, 0x0

    invoke-static {v9, v0}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 438
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;

    move-result-object v0

    invoke-interface {v0, v3}, Landroidx/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v0

    iget-object v1, v8, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v2, 0x0

    aget v17, v1, v2

    sub-int v2, v7, v17

    int-to-float v2, v2

    aget v17, v1, v11

    sub-int v11, v10, v17

    int-to-float v11, v11

    const/16 v17, 0x0

    aget v22, v1, v17

    move-object/from16 v24, v4

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .local v24, "canvas":Landroid/graphics/Canvas;
    sub-int v4, v13, v22

    int-to-float v4, v4

    move-object/from16 v22, v5

    const/4 v5, 0x1

    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .local v22, "bitmap":Landroid/graphics/Bitmap;
    aget v1, v1, v5

    sub-int v1, v14, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v11, v4, v1}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v11

    .line 442
    .local v11, "topLeftPath":Landroid/graphics/Path;
    sget-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    invoke-static {v0, v11}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v23

    .line 444
    .local v23, "origin":Landroid/animation/PropertyValuesHolder;
    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object v23, v0, v1

    invoke-static {v3, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 445
    .local v5, "anim":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroidx/transition/ChangeBounds$10;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v17, v3

    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v17, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v6, v4

    move-object v4, v9

    move/from16 v25, v7

    move-object v7, v5

    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    .local v25, "startX":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/transition/ChangeBounds$10;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v7, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    return-object v7

    .line 268
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "startY":I
    .end local v16    # "transitionAlpha":F
    .end local v17    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Landroid/view/ViewGroup;
    .end local v21    # "endParent":Landroid/view/ViewGroup;
    .end local v22    # "bitmap":Landroid/graphics/Bitmap;
    .end local v23    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v24    # "canvas":Landroid/graphics/Canvas;
    .end local v25    # "startX":I
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Landroid/view/ViewGroup;
    .local v14, "endParent":Landroid/view/ViewGroup;
    :cond_1b
    move-object/from16 v15, p1

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v12, v10

    .line 269
    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .restart local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "startParent":Landroid/view/ViewGroup;
    .restart local v21    # "endParent":Landroid/view/ViewGroup;
    :goto_15
    const/4 v0, 0x0

    return-object v0

    .line 261
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Landroid/view/ViewGroup;
    .end local v21    # "endParent":Landroid/view/ViewGroup;
    :cond_1c
    move-object/from16 v15, p1

    move-object v12, v10

    const/4 v0, 0x0

    .line 262
    :goto_16
    return-object v0
.end method

.method public getResizeClip()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 185
    sget-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .line 202
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 203
    return-void
.end method
