.class public Lorg/jaudiotagger/tag/datatype/NumberFixedLength;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "NumberFixedLength.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    if-ltz p3, :cond_0

    .line 58
    iput p3, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Length is less than zero: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/NumberFixedLength;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    .line 65
    iget p1, p1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 108
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 113
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    iget v0, v0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getSize()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    return v0
.end method

.method public readByteArray([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    .line 130
    array-length v0, p1

    if-ge p2, v0, :cond_3

    .line 135
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2

    const-wide/16 v0, 0x0

    move v2, p2

    .line 142
    :goto_0
    iget v3, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    add-int/2addr v3, p2

    if-ge v2, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    .line 145
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    .line 148
    sget-object p1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    sget-object p1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Read NumberFixedlength:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 137
    :cond_2
    new-instance v0, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset plus size to byte array is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", size = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " + arr.length "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    new-instance v0, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset to byte array is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", array.length = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Byte array is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSize(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 78
    iput p1, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    .line 94
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value type for NumberFixedLength:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 162
    const-string v0, ""

    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 6

    .line 178
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    new-array v0, v0, [B

    .line 179
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v1

    .line 184
    iget v3, p0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;->size:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    const-wide/16 v4, 0xff

    and-long/2addr v4, v1

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 186
    aput-byte v4, v0, v3

    const/16 v4, 0x8

    shr-long/2addr v1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
