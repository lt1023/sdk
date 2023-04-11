.class public Landroidx/core/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field private final mBridge:Landroid/view/View$AccessibilityDelegate;

.field private final mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 139
    sget-object v0, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1
    .param p1, "originalDelegate"    # Landroid/view/View$AccessibilityDelegate;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 148
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    invoke-direct {v0, p0}, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;)V

    iput-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mBridge:Landroid/view/View$AccessibilityDelegate;

    .line 149
    return-void
.end method

.method static getActionList(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .line 394
    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    .line 395
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 396
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private isSpanStillValid(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z
    .locals 4
    .param p1, "span"    # Landroid/text/style/ClickableSpan;
    .param p2, "view"    # Landroid/view/View;

    .line 381
    if-eqz p1, :cond_2

    .line 382
    invoke-virtual {p2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 383
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClickableSpans(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    move-result-object v1

    .line 384
    .local v1, "spans":[Landroid/text/style/ClickableSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_1

    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 385
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    const/4 v3, 0x1

    return v3

    .line 384
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 381
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "spans":[Landroid/text/style/ClickableSpan;
    .end local v2    # "i":I
    :cond_2
    nop

    .line 390
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private performClickableSpanAction(ILandroid/view/View;)Z
    .locals 4
    .param p1, "clickableSpanId"    # I
    .param p2, "host"    # Landroid/view/View;

    .line 364
    sget v0, Landroidx/core/R$id;->tag_accessibility_clickable_spans:I

    .line 366
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 367
    .local v0, "spans":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/ref/WeakReference<Landroid/text/style/ClickableSpan;>;>;"
    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 369
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/text/style/ClickableSpan;>;"
    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/style/ClickableSpan;

    .line 371
    .local v2, "span":Landroid/text/style/ClickableSpan;
    invoke-direct {p0, v2, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->isSpanStillValid(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v2, p2}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 373
    const/4 v3, 0x1

    return v3

    .line 371
    :cond_0
    goto :goto_0

    .line 369
    .end local v2    # "span":Landroid/text/style/ClickableSpan;
    :cond_1
    goto :goto_0

    .line 367
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/text/style/ClickableSpan;>;"
    :cond_2
    nop

    .line 377
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 216
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 320
    .local v0, "provider":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 321
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 320
    :cond_0
    goto :goto_0

    .line 318
    .end local v0    # "provider":Ljava/lang/Object;
    :cond_1
    nop

    .line 324
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getBridge()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mBridge:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 256
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 257
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 275
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 276
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 275
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 277
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 236
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 237
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 300
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "success":Z
    invoke-static {p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 347
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 348
    .local v3, "actionCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 349
    invoke-virtual {v3, p1, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->perform(Landroid/view/View;Landroid/os/Bundle;)Z

    move-result v0

    .line 350
    goto :goto_1

    .line 348
    :cond_0
    nop

    .line 346
    .end local v3    # "actionCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 354
    iget-object v2, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_2

    .line 353
    :cond_2
    nop

    .line 356
    :goto_2
    if-nez v0, :cond_3

    sget v2, Landroidx/core/R$id;->accessibility_action_clickable_span:I

    if-ne p2, v2, :cond_3

    .line 357
    const-string v2, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    const/4 v3, -0x1

    .line 358
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 357
    invoke-direct {p0, v2, p1}, Landroidx/core/view/AccessibilityDelegateCompat;->performClickableSpanAction(ILandroid/view/View;)Z

    move-result v0

    goto :goto_3

    .line 356
    :cond_3
    nop

    .line 360
    :goto_3
    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .line 173
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 174
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 195
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 196
    return-void
.end method
