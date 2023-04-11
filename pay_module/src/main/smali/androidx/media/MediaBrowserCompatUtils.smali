.class public Landroidx/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 33
    return v0

    .line 34
    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_3

    .line 35
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 36
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 35
    :cond_2
    nop

    .line 36
    :goto_0
    const/4 v0, 0x0

    .line 35
    :goto_1
    return v0

    .line 37
    :cond_3
    if-nez p1, :cond_6

    .line 38
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_5

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 39
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_2

    .line 38
    :cond_5
    nop

    .line 39
    :goto_2
    const/4 v0, 0x0

    .line 38
    :goto_3
    return v0

    .line 41
    :cond_6
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE"

    .line 42
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_8

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 43
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    .line 44
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_7

    goto :goto_5

    :cond_7
    goto :goto_4

    .line 42
    :cond_8
    nop

    .line 44
    :goto_4
    const/4 v0, 0x0

    .line 41
    :goto_5
    return v0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 49
    const/4 v0, -0x1

    if-nez p0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "page1":I
    :goto_0
    if-nez p1, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 51
    .local v2, "page2":I
    :goto_1
    if-nez p0, :cond_2

    const/4 v3, -0x1

    goto :goto_2

    :cond_2
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 52
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_2
    nop

    .line 53
    .local v3, "pageSize1":I
    if-nez p1, :cond_3

    const/4 v4, -0x1

    goto :goto_3

    :cond_3
    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    .line 54
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :goto_3
    nop

    .line 57
    .local v4, "pageSize2":I
    const/4 v5, 0x1

    if-eq v1, v0, :cond_5

    if-ne v3, v0, :cond_4

    goto :goto_4

    .line 61
    :cond_4
    mul-int v6, v3, v1

    .line 62
    .local v6, "startIndex1":I
    add-int v7, v6, v3

    sub-int/2addr v7, v5

    goto :goto_5

    .line 57
    .end local v6    # "startIndex1":I
    :cond_5
    :goto_4
    nop

    .line 58
    const/4 v6, 0x0

    .line 59
    .restart local v6    # "startIndex1":I
    const v7, 0x7fffffff

    .line 65
    .local v7, "endIndex1":I
    :goto_5
    if-eq v2, v0, :cond_7

    if-ne v4, v0, :cond_6

    goto :goto_6

    .line 69
    :cond_6
    mul-int v0, v4, v2

    .line 70
    .local v0, "startIndex2":I
    add-int v8, v0, v4

    sub-int/2addr v8, v5

    goto :goto_7

    .line 65
    .end local v0    # "startIndex2":I
    :cond_7
    :goto_6
    nop

    .line 66
    const/4 v0, 0x0

    .line 67
    .restart local v0    # "startIndex2":I
    const v8, 0x7fffffff

    .line 74
    .local v8, "endIndex2":I
    :goto_7
    if-lt v7, v0, :cond_8

    if-lt v8, v6, :cond_8

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    return v5
.end method
